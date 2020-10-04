.class public Lcom/android/server/am/OpForceDarkControlInjector;
.super Ljava/lang/Object;
.source "OpForceDarkControlInjector.java"


# static fields
.field private static sController:Lcom/android/server/am/IOpForceDarkController;

.field private static sFeatureEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OpForceDarkControlInjector;->sController:Lcom/android/server/am/IOpForceDarkController;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x113

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpForceDarkControlInjector;->sFeatureEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchForceDarkConfig(Landroid/app/IApplicationThread;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p0, "appThread"    # Landroid/app/IApplicationThread;
    .param p1, "targetAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 46
    invoke-static {}, Lcom/android/server/am/OpForceDarkControlInjector;->initInstance()V

    .line 47
    sget-object v0, Lcom/android/server/am/OpForceDarkControlInjector;->sController:Lcom/android/server/am/IOpForceDarkController;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpForceDarkController;->dispatchForceDarkConfig(Landroid/app/IApplicationThread;Landroid/content/pm/ApplicationInfo;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static handleStartingWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/android/server/am/OpForceDarkControlInjector;->initInstance()V

    .line 54
    sget-object v0, Lcom/android/server/am/OpForceDarkControlInjector;->sController:Lcom/android/server/am/IOpForceDarkController;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpForceDarkController;->handleStartingWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    .line 39
    invoke-static {}, Lcom/android/server/am/OpForceDarkControlInjector;->initInstance()V

    .line 40
    sget-object v0, Lcom/android/server/am/OpForceDarkControlInjector;->sController:Lcom/android/server/am/IOpForceDarkController;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpForceDarkController;->init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V

    .line 43
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/android/server/am/OpForceDarkControlInjector;->sFeatureEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpForceDarkControlInjector;->sController:Lcom/android/server/am/IOpForceDarkController;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_force_dark_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 34
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpForceDarkController;

    sput-object v0, Lcom/android/server/am/OpForceDarkControlInjector;->sController:Lcom/android/server/am/IOpForceDarkController;

    .line 36
    :cond_0
    return-void
.end method

.method public static notifyPackageChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "changeType"    # Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/android/server/am/OpForceDarkControlInjector;->initInstance()V

    .line 61
    sget-object v0, Lcom/android/server/am/OpForceDarkControlInjector;->sController:Lcom/android/server/am/IOpForceDarkController;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpForceDarkController;->notifyPackageChanged(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
