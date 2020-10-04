.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mGlobalActionsAvailable:Z

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardShowing:Z

.field private mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

.field private final mShowTimeout:Ljava/lang/Runnable;

.field private mShowing:Z

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 50
    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActionsProvider;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 51
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0}, Lcom/android/server/policy/GlobalActionsProvider;->setGlobalActionsListener(Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V

    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "GlobalActions"

    const-string v1, "No GlobalActionsProvider found, defaulting to LegacyGlobalActions"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .line 25
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .line 25
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .line 25
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/LegacyGlobalActions;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .line 25
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    return-object v0
.end method

.method private ensureLegacyCreated()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    .line 62
    return-void
.end method


# virtual methods
.method public onGlobalActionsAvailableChanged(Z)V
    .locals 3
    .param p1, "available"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    .line 99
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    .line 105
    :cond_0
    return-void
.end method

.method public onGlobalActionsDismissed()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 93
    return-void
.end method

.method public onGlobalActionsShown()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 4
    .param p1, "keyguardShowing"    # Z
    .param p2, "deviceProvisioned"    # Z

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActionsProvider;->isGlobalActionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 70
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 72
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActionsProvider;->showGlobalActions()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 78
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    .line 80
    :goto_0
    return-void
.end method
