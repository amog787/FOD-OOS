.class public Lcom/android/server/policy/OpScreenshotImprovementInjector;
.super Ljava/lang/Object;
.source "OpScreenshotImprovementInjector.java"


# static fields
.field public static final IS_BITMOJI_AOD_ENABLED:Z

.field public static final IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

.field private static sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x9e

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 28
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    .line 30
    new-array v0, v0, [I

    const/16 v1, 0x174

    aput v1, v0, v3

    .line 31
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_BITMOJI_AOD_ENABLED:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 44
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->init()V

    .line 47
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenshotimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 38
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IOpScreenshotImprovement;

    sput-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    .line 40
    :cond_0
    return-void
.end method

.method public static interceptAccessibilityShortcutChord(Z)V
    .locals 1
    .param p0, "isAccessibilityShortcutAvailable"    # Z

    .line 81
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 82
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptAccessibilityShortcutChord(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method public static interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "isAccessibilityShortcutAvailable"    # Z

    .line 58
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 59
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "policyFlags"    # I

    .line 88
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 89
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 92
    :cond_0
    return-void
.end method

.method public static interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "interactive"    # Z

    .line 67
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 68
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public static interceptPowerKeyUp(Landroid/view/KeyEvent;)V
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .line 74
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptPowerKeyUp(Landroid/view/KeyEvent;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static interceptScreenshotChord()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 51
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptScreenshotChord()V

    .line 54
    :cond_0
    return-void
.end method

.method public static isDisplayDoze()Z
    .locals 1

    .line 95
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 96
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->isDisplayDoze()Z

    move-result v0

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
