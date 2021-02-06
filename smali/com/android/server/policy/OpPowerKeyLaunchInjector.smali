.class public Lcom/android/server/policy/OpPowerKeyLaunchInjector;
.super Ljava/lang/Object;
.source "OpPowerKeyLaunchInjector.java"


# static fields
.field private static sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelPendingPowerKeyAction()V
    .locals 1

    .line 64
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 65
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->cancelPendingPowerKeyAction()V

    .line 66
    return-void
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    .line 33
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_powerkey_launch:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static handleEmergency(Landroid/util/MutableBoolean;)Z
    .locals 1
    .param p0, "outLaunched"    # Landroid/util/MutableBoolean;

    .line 81
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 82
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->handleEmergency(Landroid/util/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 44
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 45
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V

    .line 46
    return-void
.end method

.method public static initGestureLauncherService(Lcom/android/server/GestureLauncherService;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/GestureLauncherService;

    .line 70
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 71
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->initGestureLauncherService(Lcom/android/server/GestureLauncherService;)V

    .line 72
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 37
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_powerkey_launch:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 39
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    sput-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    .line 41
    :cond_0
    return-void
.end method

.method public static interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "policyFlags"    # I

    .line 92
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 93
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 94
    return-void
.end method

.method public static interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .line 59
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 60
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static interceptPowerKeyUp()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 88
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->interceptPowerKeyUp()V

    .line 89
    return-void
.end method

.method public static isDoubleTapPowerWalletHasNoActiveCard()Z
    .locals 1

    .line 99
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 100
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->isDoubleTapPowerWalletHasNoActiveCard()Z

    move-result v0

    return v0
.end method

.method public static processEmergencyTap(Landroid/view/KeyEvent;ZZ)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "launched"    # Z
    .param p2, "cameraEnabled"    # Z

    .line 76
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 77
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->processEmergencyTap(Landroid/view/KeyEvent;ZZ)Z

    move-result v0

    return v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .line 54
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 55
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method public static updateSettings(Landroid/content/ContentResolver;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 49
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    .line 50
    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->updateSettings(Landroid/content/ContentResolver;)V

    .line 51
    return-void
.end method
