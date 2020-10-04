.class public Lcom/android/server/wm/OpScreenRotationImprovementInjector;
.super Ljava/lang/Object;
.source "OpScreenRotationImprovementInjector.java"


# static fields
.field public static final IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

.field private static sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xcd

    aput v2, v0, v1

    .line 28
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    .locals 7
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "fixedToUserRotation"    # Z
    .param p2, "isSecure"    # Z
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p4, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p5, "gb"    # Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    .line 45
    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    .line 46
    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    .line 47
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IOpScreenRotationImprovement;->init(Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static initBlackFrame(Landroid/view/SurfaceControl$Transaction;ZIIZ)Lcom/android/server/wm/BlackFrame;
    .locals 6
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "customAnim"    # Z
    .param p2, "finalWidth"    # I
    .param p3, "finalHeight"    # I
    .param p4, "isEnter"    # Z

    .line 64
    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    .line 65
    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    .line 66
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/IOpScreenRotationImprovement;->initBlackFrame(Landroid/view/SurfaceControl$Transaction;ZIIZ)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenrotationimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 35
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenRotationImprovement;

    sput-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    .line 37
    :cond_0
    return-void
.end method

.method public static loadAnimation(IZII)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "delta"    # I
    .param p1, "isEnter"    # Z
    .param p2, "finalWidth"    # I
    .param p3, "finalHeight"    # I

    .line 54
    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    .line 55
    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpScreenRotationImprovement;->loadAnimation(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static stepAnimation(JILandroid/view/animation/Animation;)V
    .locals 1
    .param p0, "now"    # J
    .param p2, "curRotation"    # I
    .param p3, "rotateEnterAnimation"    # Landroid/view/animation/Animation;

    .line 82
    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    .line 83
    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpScreenRotationImprovement;->stepAnimation(JILandroid/view/animation/Animation;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static updateEnteringBlackFrame(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BlackFrame;)Lcom/android/server/wm/BlackFrame;
    .locals 1
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "enteringBlackFrame"    # Lcom/android/server/wm/BlackFrame;

    .line 74
    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenRotationImprovement;->updateEnteringBlackFrame(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BlackFrame;)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
