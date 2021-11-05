.class public Lcom/android/server/wm/OpStartingWindowManagerInjector;
.super Ljava/lang/Object;
.source "OpStartingWindowManagerInjector.java"


# static fields
.field public static final IS_STARTING_WINDOW_FEATURE_ENABLED:Z

.field private static sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x102

    aput v2, v0, v1

    .line 36
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->IS_STARTING_WINDOW_FEATURE_ENABLED:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkActivityTypeHome(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1
    .param p0, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "isActivityTypeHome"    # Z

    .line 108
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    return p1

    .line 112
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_1

    .line 113
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpStartingWindowManager;->checkActivityTypeHome(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    return v0

    .line 115
    :cond_1
    return p1
.end method

.method public static checkAppWindowAnimating(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 195
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 196
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->checkAppWindowAnimating(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkSplashWindowFlag()Z
    .locals 1

    .line 163
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 164
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/android/server/wm/IOpStartingWindowManager;->checkSplashWindowFlag()Z

    move-result v0

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkStartingWindowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/TypedArray;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "originDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 212
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpStartingWindowManager;->checkStartingWindowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/TypedArray;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 215
    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkoutWindowNeedHide(Lcom/android/server/wm/WindowState;I)I
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "viewVisibility"    # I

    .line 119
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 120
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpStartingWindowManager;->checkoutWindowNeedHide(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    .line 126
    :cond_1
    return p1

    .line 121
    :cond_2
    :goto_0
    return p1
.end method

.method public static clearCacheWhenOnConfigurationChange(I)V
    .locals 1
    .param p0, "changes"    # I

    .line 79
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 80
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->clearCacheWhenOnConfigurationChange(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public static createAnimationForLauncherExit()Landroid/view/animation/Animation;
    .locals 1

    .line 179
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 180
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/android/server/wm/IOpStartingWindowManager;->createAnimationForLauncherExit()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppTransit(I)I
    .locals 1
    .param p0, "originTransit"    # I

    .line 137
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 138
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->getAppTransit(I)I

    move-result v0

    return v0

    .line 141
    :cond_0
    return p0
.end method

.method public static getStartingWindowType(III)I
    .locals 1
    .param p0, "defaultTypeNone"    # I
    .param p1, "defaultTypeSplash"    # I
    .param p2, "defaultTypeSnapshot"    # I

    .line 154
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 155
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpStartingWindowManager;->getStartingWindowType(III)I

    move-result v0

    return v0

    .line 159
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static handleDestroySurfaces(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 145
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 146
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpStartingWindowManager;->handleDestroySurfaces(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static handleStartingWindow(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 219
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 220
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpStartingWindowManager;->handleStartingWindow(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method public static handleStatusbarForStartingWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 227
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpStartingWindowManager;->handleStatusbarForStartingWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 46
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 47
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->init(Lcom/android/server/wm/WindowManagerService;)V

    .line 50
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->IS_STARTING_WINDOW_FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_startingwindow:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpStartingWindowManager;

    sput-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    .line 43
    :cond_0
    return-void
.end method

.method public static interceptRemoveStartingWindow(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "surface"    # Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 171
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 172
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpStartingWindowManager;->interceptRemoveStartingWindow(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)Z

    move-result v0

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onStartAppShotcut()V
    .locals 1

    .line 86
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 87
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lcom/android/server/wm/IOpStartingWindowManager;->onStartAppShotcut()V

    .line 90
    :cond_0
    return-void
.end method

.method public static preloadAppSplash(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 1
    .param p0, "realCallingPid"    # I
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "reason"    # Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 55
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpStartingWindowManager;->preloadAppSplash(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static putSnapshot(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 204
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 205
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->putSnapshot(Lcom/android/server/wm/ActivityRecord;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static reviseWindowFlagsForStarting(Lcom/android/server/wm/ActivityRecord;ZZZZ)V
    .locals 6
    .param p0, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "newTask"    # Z
    .param p2, "taskSwitch"    # Z
    .param p3, "processRunning"    # Z
    .param p4, "activityCreated"    # Z

    .line 71
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 72
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 73
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/IOpStartingWindowManager;->reviseWindowFlagsForStarting(Lcom/android/server/wm/ActivityRecord;ZZZZ)V

    .line 76
    :cond_0
    return-void
.end method

.method public static setAppTransit(I)V
    .locals 1
    .param p0, "transit"    # I

    .line 93
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 94
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->setAppTransit(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public static setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "topFocusedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 130
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 131
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static setFromRecentState(Z)V
    .locals 1
    .param p0, "state"    # Z

    .line 61
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 62
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->setFromRecentState(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public static setStartingWindowExitAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 187
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 188
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->setStartingWindowExitAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static skipAppTransitionAnimation()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    .line 101
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/android/server/wm/IOpStartingWindowManager;->skipAppTransitionAnimation()Z

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
