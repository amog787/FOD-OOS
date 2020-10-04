.class public Lcom/android/server/policy/OpQuickPayInjector;
.super Ljava/lang/Object;
.source "OpQuickPayInjector.java"


# static fields
.field public static final IS_QUICK_PAY_ENABLED:Z

.field private static sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 1
    .param p0, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p1, "uiMode"    # I

    .line 63
    invoke-static {}, Lcom/android/server/policy/OpQuickPayInjector;->initInstance()V

    .line 64
    sget-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpQuickPay;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 65
    return-void
.end method

.method public static focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p0, "lastFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 58
    invoke-static {}, Lcom/android/server/policy/OpQuickPayInjector;->initInstance()V

    .line 59
    sget-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpQuickPay;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 60
    return-void
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    .line 37
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickpay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickpay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 43
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IOpQuickPay;

    sput-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    .line 45
    :cond_0
    return-void
.end method

.method public static initOpQuickPay(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "userId"    # I

    .line 48
    invoke-static {}, Lcom/android/server/policy/OpQuickPayInjector;->initInstance()V

    .line 49
    sget-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/policy/IOpQuickPay;->initOpQuickPay(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 50
    return-void
.end method

.method public static interceptKeyBeforeQueueing(Landroid/view/KeyEvent;ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)I
    .locals 6
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "down"    # Z
    .param p2, "interactive"    # Z
    .param p3, "focusedWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p4, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 80
    invoke-static {}, Lcom/android/server/policy/OpQuickPayInjector;->initInstance()V

    .line 81
    sget-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/policy/IOpQuickPay;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)I

    move-result v0

    return v0
.end method

.method public static notifyAppLaunchFailedLw(Ljava/lang/String;)V
    .locals 1
    .param p0, "appName"    # Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/android/server/policy/OpQuickPayInjector;->initInstance()V

    .line 54
    sget-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpQuickPay;->notifyAppLaunchFailedLw(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .line 73
    invoke-static {}, Lcom/android/server/policy/OpQuickPayInjector;->initInstance()V

    .line 74
    sget-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpQuickPay;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 75
    return-void
.end method

.method public static updateSettings(Landroid/content/ContentResolver;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 68
    invoke-static {}, Lcom/android/server/policy/OpQuickPayInjector;->initInstance()V

    .line 69
    sget-object v0, Lcom/android/server/policy/OpQuickPayInjector;->sOpQuickPay:Lcom/android/server/policy/IOpQuickPay;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpQuickPay;->updateSettings(Landroid/content/ContentResolver;)V

    .line 70
    return-void
.end method
