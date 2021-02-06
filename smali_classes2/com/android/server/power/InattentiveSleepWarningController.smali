.class public Lcom/android/server/power/InattentiveSleepWarningController;
.super Ljava/lang/Object;
.source "InattentiveSleepWarningController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InattentiveSleepWarning"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsShown:Z

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method private dismissInternal(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->dismissInattentiveSleepWarning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InattentiveSleepWarning"

    const-string v2, "Failed to dismiss inattentive sleep warning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 97
    nop

    .line 98
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method public static synthetic lambda$EjYRIermunwb9Ll5LMj3chPJN6k(Lcom/android/server/power/InattentiveSleepWarningController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->showInternal()V

    return-void
.end method

.method private showInternal()V
    .locals 3

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showInattentiveSleepWarning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InattentiveSleepWarning"

    const-string v2, "Failed to show inattentive sleep warning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .line 79
    invoke-virtual {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/-$$Lambda$InattentiveSleepWarningController$fd5hIb5QJl3fTkCKcm9jEkrhnUU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/-$$Lambda$InattentiveSleepWarningController$fd5hIb5QJl3fTkCKcm9jEkrhnUU;-><init>(Lcom/android/server/power/InattentiveSleepWarningController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    .line 85
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    return v0
.end method

.method public synthetic lambda$dismiss$0$InattentiveSleepWarningController(Z)V
    .locals 0
    .param p1, "animated"    # Z

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/power/InattentiveSleepWarningController;->dismissInternal(Z)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/-$$Lambda$InattentiveSleepWarningController$EjYRIermunwb9Ll5LMj3chPJN6k;

    invoke-direct {v1, p0}, Lcom/android/server/power/-$$Lambda$InattentiveSleepWarningController$EjYRIermunwb9Ll5LMj3chPJN6k;-><init>(Lcom/android/server/power/InattentiveSleepWarningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    .line 63
    return-void
.end method
