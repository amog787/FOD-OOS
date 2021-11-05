.class Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceProvisionedObserver"
.end annotation


# instance fields
.field private final mDeviceProvisionedUri:Landroid/net/Uri;

.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 3553
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3554
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3548
    const-string p1, "device_provisioned"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 3555
    return-void
.end method

.method private clearFrpCredentialIfOwnerNotSecure()V
    .locals 6

    .line 3598
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 3599
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3600
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3601
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3602
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 3605
    :cond_0
    return-void

    .line 3607
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 3608
    :cond_2
    return-void
.end method

.method private isProvisioned()Z
    .locals 3

    .line 3625
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private reportDeviceSetupComplete()V
    .locals 3

    .line 3587
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->reportDeviceSetupComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3590
    goto :goto_0

    .line 3588
    :catch_0
    move-exception v0

    .line 3589
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failure reporting to IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3591
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private updateRegistration()V
    .locals 4

    .line 3611
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3612
    .local v0, "register":Z
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mRegistered:Z

    if-ne v0, v1, :cond_0

    .line 3613
    return-void

    .line 3615
    :cond_0
    if-eqz v0, :cond_1

    .line 3616
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 3619
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3621
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mRegistered:Z

    .line 3622
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 3559
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3560
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    .line 3562
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3563
    const-string v0, "LockSettingsService"

    const-string v1, "Reporting device setup complete to IGateKeeperService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->reportDeviceSetupComplete()V

    .line 3565
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->clearFrpCredentialIfOwnerNotSecure()V

    .line 3568
    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 3571
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3572
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    goto :goto_0

    .line 3577
    :cond_0
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3578
    const-string v0, "LockSettingsService"

    const-string v1, "FRP credential disabled, reporting device setup complete to Gatekeeper immediately"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->reportDeviceSetupComplete()V

    .line 3583
    :cond_1
    :goto_0
    return-void
.end method
