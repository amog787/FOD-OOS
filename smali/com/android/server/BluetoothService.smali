.class Lcom/android/server/BluetoothService;
.super Lcom/android/server/SystemService;
.source "BluetoothService.java"


# instance fields
.field private mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothService;->mInitialized:Z

    .line 29
    new-instance v0, Lcom/android/server/BluetoothManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    .line 30
    return-void
.end method

.method private initialize()V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/android/server/BluetoothService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->handleOnBootPhase()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BluetoothService;->mInitialized:Z

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 45
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    const-string v1, "bluetooth_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/BluetoothService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 48
    :cond_0
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 49
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/android/server/BluetoothService;->initialize()V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 41
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 56
    iget-boolean v0, p0, Lcom/android/server/BluetoothService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/android/server/BluetoothService;->initialize()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService;->handleOnSwitchUser(I)V

    .line 61
    :goto_0
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 65
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService;->handleOnUnlockUser(I)V

    .line 66
    return-void
.end method
