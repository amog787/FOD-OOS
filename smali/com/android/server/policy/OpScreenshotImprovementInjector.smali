.class public Lcom/android/server/policy/OpScreenshotImprovementInjector;
.super Ljava/lang/Object;
.source "OpScreenshotImprovementInjector.java"


# static fields
.field public static final IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

.field private static sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xbd

    aput v2, v0, v1

    .line 28
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    .line 27
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

    .line 40
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 41
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->init()V

    .line 44
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenshotimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 35
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IOpScreenshotImprovement;

    sput-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    .line 37
    :cond_0
    return-void
.end method

.method public static interceptAccessibilityShortcutChord(Z)V
    .locals 1
    .param p0, "isAccessibilityShortcutAvailable"    # Z

    .line 78
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 79
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptAccessibilityShortcutChord(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public static interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "isAccessibilityShortcutAvailable"    # Z

    .line 55
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 56
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "policyFlags"    # I

    .line 85
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 86
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 89
    :cond_0
    return-void
.end method

.method public static interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "interactive"    # Z

    .line 64
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 65
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public static interceptPowerKeyUp()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 72
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptPowerKeyUp()V

    .line 75
    :cond_0
    return-void
.end method

.method public static interceptScreenshotChord()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    .line 48
    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptScreenshotChord()V

    .line 51
    :cond_0
    return-void
.end method
