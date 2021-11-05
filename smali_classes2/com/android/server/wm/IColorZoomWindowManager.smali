.class public interface abstract Lcom/android/server/wm/IColorZoomWindowManager;
.super Ljava/lang/Object;
.source "IColorZoomWindowManager.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/IColorZoomWindowManager;

.field public static final NAME:Ljava/lang/String; = "IColorZoomWindowManager"

.field public static final TRANSIT_ZOOM_CLOSE:I = 0x65

.field public static final TRANSIT_ZOOM_CLOSE_LEFT:I = 0x66

.field public static final TRANSIT_ZOOM_CLOSE_RIGHT:I = 0x67

.field public static final TRANSIT_ZOOM_OPEN:I = 0x64

.field public static final UPDATE_MODE_APP_LAUNCH:I = 0x0

.field public static final UPDATE_MODE_APP_ORIENTATION_CHANGE:I = 0x1

.field public static final WINDOW_STATE_INVALID:I = -0x1

.field public static final WINDOW_STATE_ZOOM:I = 0x2

.field public static final sDebugfDetail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/IColorZoomWindowManager;->sDebugfDetail:Z

    .line 70
    new-instance v0, Lcom/android/server/wm/IColorZoomWindowManager$1;

    invoke-direct {v0}, Lcom/android/server/wm/IColorZoomWindowManager$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/IColorZoomWindowManager;->DEFAULT:Lcom/android/server/wm/IColorZoomWindowManager;

    return-void
.end method

.method public static excludeWindowTypeFromTapOutTask(I)Z
    .locals 1
    .param p0, "windowType"    # I

    .line 252
    const/16 v0, 0x7d3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 260
    const/4 v0, 0x0

    return v0

    .line 258
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


# virtual methods
.method public addTapExcluedWindow(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 209
    return-void
.end method

.method public adjustInputWindowHandle(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/WindowState;Landroid/view/InputWindowHandle;)V
    .locals 0
    .param p1, "monitor"    # Lcom/android/server/wm/InputMonitor;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "handle"    # Landroid/view/InputWindowHandle;

    .line 192
    return-void
.end method

.method public adjustWindowCropForLeash(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "appToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "windowCrop"    # Landroid/graphics/Rect;

    .line 183
    return-void
.end method

.method public adjustWindowFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowFrames;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "windowFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 196
    return-void
.end method

.method public amendWindowTapExcludeRegion(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .locals 0
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 167
    return-void
.end method

.method public cantReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public checkInSideGestureHotZone(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public checkLaunchingMiniZoomFromRecent(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public clearWindowFlagsIfNeed(Lcom/android/server/wm/WindowState;I)I
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "curFlags"    # I

    .line 158
    return p2
.end method

.method public varargs debugLogUtil(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "vars"    # [Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public displayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 230
    return-void
.end method

.method public gestureSwipeFromBottom()V
    .locals 0

    .line 218
    return-void
.end method

.method public getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 1

    .line 99
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;-><init>()V

    return-object v0
.end method

.method public getScaleBound(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 284
    return-void
.end method

.method public getTaskBound()Landroid/graphics/Rect;
    .locals 1

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getWindowState(Lcom/android/server/wm/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method public getZoomAnimationAdapter(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/ActivityRecord;Landroid/view/animation/Animation;ILandroid/graphics/Rect;IZ)Lcom/android/server/wm/AnimationAdapter;
    .locals 0
    .param p1, "adapter"    # Lcom/android/server/wm/AnimationAdapter;
    .param p2, "appToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "a"    # Landroid/view/animation/Animation;
    .param p4, "appStackClipMode"    # I
    .param p5, "transitStartRect"    # Landroid/graphics/Rect;
    .param p6, "transit"    # I
    .param p7, "enter"    # Z

    .line 178
    return-object p1
.end method

.method public getZoomAppConfigList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getZoomModeDisplayInfo(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;
    .locals 0
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "displayId"    # I
    .param p3, "callingUid"    # I

    .line 239
    return-object p1
.end method

.method public getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 1

    .line 116
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;-><init>()V

    return-object v0
.end method

.method public getZoomWindowTransition(ILandroid/util/ArraySet;Landroid/util/ArraySet;)I
    .locals 0
    .param p1, "transit"    # I
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

    .line 309
    .local p2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p3, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    return p1
.end method

.method public handleSleepStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 290
    return-void
.end method

.method public handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;II)V
    .locals 0
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 163
    return-void
.end method

.method public handleZoomStackByTargetTask(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 287
    return-void
.end method

.method public hideZoomWindow(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 104
    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 80
    return-void
.end method

.method public init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    return-void
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 84
    return-void
.end method

.method public isMiniStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callPkg"    # Ljava/lang/String;
    .param p4, "extension"    # Landroid/os/Bundle;

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportZoomWindowMode()Z
    .locals 1

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public notifyWindowDied(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 139
    return-void
.end method

.method public notifyZoomActivityShown(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 135
    return-void
.end method

.method public onAnimationFinished(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 222
    return-void
.end method

.method public onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 0
    .param p1, "cvInfo"    # Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    .line 269
    return-void
.end method

.method public onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 0
    .param p1, "inputEventInfo"    # Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    .line 265
    return-void
.end method

.method public onRemoveStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 314
    return-void
.end method

.method public onWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 312
    return-void
.end method

.method public prepareSurfaceFromDim(Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 171
    return-void
.end method

.method public prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V
    .locals 0
    .param p1, "curStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "nextStack"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "open"    # Z

    .line 187
    return-void
.end method

.method public recentsAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "type"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "orientation"    # I
    .param p5, "bOptions"    # Landroid/os/Bundle;
    .param p6, "controller"    # Landroid/view/IRecentsAnimationController;
    .param p7, "moveHomeToTop"    # Z
    .param p8, "sendUserLeaveHint"    # Z

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public registerZoomWindowStackOrderChangeListener(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 293
    return-void
.end method

.method public removeIfPossible(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 321
    return-void
.end method

.method public removeTapExcluedWindow(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 213
    return-void
.end method

.method public resetZoomAnimationFinished(Z)V
    .locals 0
    .param p1, "moveHomeToTop"    # Z

    .line 301
    return-void
.end method

.method public setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    .line 121
    return-void
.end method

.method public shouldClearReusedActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/util/MergedConfiguration;)Z
    .locals 1
    .param p1, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "startActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "lastReportedConfiguration"    # Landroid/util/MergedConfiguration;

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public shouldIgnoreInputShownForResult(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "displayId"    # I

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .param p4, "callPkg"    # Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    return v0
.end method

.method public topResumedActivityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 226
    return-void
.end method

.method public unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public updateInputVisibility(Lcom/android/server/wm/WindowState;Z)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateBound"    # Z

    .line 151
    return-void
.end method

.method public updateSurfacePosition(Lcom/android/server/wm/WindowContainer;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/WindowContainer;

    .line 155
    return-void
.end method

.method public updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "startActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "updatemode"    # I
    .param p6, "callingPid"    # I

    .line 131
    return-void
.end method

.method public updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 204
    const/4 v0, 0x0

    return v0
.end method
