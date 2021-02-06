.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mTetherDialogShow:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private notShowAgain:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 193
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    .line 167
    iput-boolean v0, p0, Lcom/android/server/usb/UsbService;->mTetherDialogShow:Z

    .line 177
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 194
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 196
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 197
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v1, p1, p0}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 198
    new-instance v1, Lcom/android/server/usb/UsbPermissionManager;

    invoke-direct {v1, p1, p0}, Lcom/android/server/usb/UsbPermissionManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 199
    new-instance v1, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 201
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 202
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.usb.host"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    new-instance v2, Lcom/android/server/usb/UsbHostManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 205
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_3

    .line 210
    :cond_2
    new-instance v2, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 213
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 215
    new-instance v0, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 228
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v2, "filter":Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 230
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 99
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 99
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 99
    iget-boolean v0, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbService;->setTetherState(IZ)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/android/server/usb/UsbService;->mTetherDialogShow:Z

    return p1
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private onStopUser(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "stoppedUser"    # Landroid/os/UserHandle;

    .line 263
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    .line 264
    return-void
.end method

.method private onSwitchUser(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 240
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 246
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 247
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    .line 248
    .local v1, "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 254
    .end local v1    # "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :cond_1
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 1108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setTetherState(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "enable"    # Z

    .line 631
    :try_start_0
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 632
    .local v0, "clz":Ljava/lang/Class;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 633
    .local v1, "wifimanager":Landroid/net/wifi/WifiManager;
    const-string v2, "setTetherState"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 635
    .local v2, "wifiManagerMethod":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    nop

    .end local v0    # "clz":Ljava/lang/Class;
    .end local v1    # "wifimanager":Landroid/net/wifi/WifiManager;
    .end local v2    # "wifiManagerMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception happened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public addAccessoryPackagesToPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 429
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v0, "packageNames"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [Ljava/lang/String;

    .line 431
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 437
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    .line 438
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->addAccessoryPackagesToDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 441
    throw v2
.end method

.method public addDevicePackagesToPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 411
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v0, "packageNames"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [Ljava/lang/String;

    .line 413
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 419
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    .line 420
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->addDevicePackagesToDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    nop

    .line 424
    return-void

    .line 422
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    throw v2
.end method

.method public bootCompleted()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 284
    :cond_0
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 613
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 619
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 621
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    nop

    .line 625
    return-void

    .line 623
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 852
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "  dumpsys usb add-port \"matrix\" dual"

    const-string v4, "?"

    const-string v5, "  dumpsys usb reset"

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v7, "UsbService"

    invoke-static {v6, v7, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 854
    :cond_0
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v6, v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 855
    .local v6, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 857
    .local v17, "ident":J
    :try_start_0
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v8

    .line 858
    .local v15, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v15, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 860
    const/4 v8, 0x0

    .line 861
    .local v8, "dumpAsProto":Z
    const-string v9, "--proto"

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v9, :cond_1

    .line 862
    const/4 v8, 0x1

    move/from16 v19, v8

    goto :goto_0

    .line 861
    :cond_1
    move/from16 v19, v8

    .line 865
    .end local v8    # "dumpAsProto":Z
    .local v19, "dumpAsProto":Z
    :goto_0
    if-eqz v3, :cond_3a

    :try_start_1
    array-length v8, v3

    if-eqz v8, :cond_3a

    const/4 v8, 0x0

    aget-object v9, v3, v8

    const-string v10, "-a"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    if-eqz v19, :cond_2

    move-object v2, v3

    move-object/from16 v22, v15

    goto/16 :goto_18

    .line 891
    :cond_2
    const-string v9, "set-port-roles"

    aget-object v10, v3, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v10, "device"

    const-string v13, "Invalid power role: "

    const-string v14, "sink"

    const-string v8, "source"

    const/4 v11, 0x4

    const/16 v23, -0x1

    move-object/from16 v24, v13

    const-string v12, ""

    const/4 v13, 0x1

    if-eqz v9, :cond_12

    :try_start_2
    array-length v9, v3

    if-ne v9, v11, :cond_12

    .line 892
    aget-object v0, v3, v13

    .line 894
    .local v0, "portId":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v9, -0x356f97e5    # -4731917.5f

    if-eq v4, v9, :cond_6

    const v8, -0x1a426a07

    if-eq v4, v8, :cond_5

    const v8, 0x35de93

    if-eq v4, v8, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v13

    goto :goto_2

    :cond_5
    const-string v4, "no-power"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    move/from16 v4, v23

    :goto_2
    if-eqz v4, :cond_9

    if-eq v4, v13, :cond_8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v24

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1096
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    return-void

    .line 902
    :cond_7
    const/4 v4, 0x0

    .line 903
    .local v4, "powerRole":I
    goto :goto_3

    .line 899
    .end local v4    # "powerRole":I
    :cond_8
    const/4 v4, 0x2

    .line 900
    .restart local v4    # "powerRole":I
    goto :goto_3

    .line 896
    .end local v4    # "powerRole":I
    :cond_9
    const/4 v4, 0x1

    .line 897
    .restart local v4    # "powerRole":I
    nop

    .line 909
    :goto_3
    const/4 v5, 0x3

    :try_start_3
    aget-object v8, v3, v5

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v9, -0x4f94e1aa

    if-eq v5, v9, :cond_d

    const v9, 0x30f5a8

    if-eq v5, v9, :cond_c

    const v9, 0x7b007436

    if-eq v5, v9, :cond_b

    :cond_a
    goto :goto_4

    :cond_b
    const-string v5, "no-data"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v8, 0x2

    goto :goto_5

    :cond_c
    const-string v5, "host"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v8, v13

    goto :goto_5

    :goto_4
    move/from16 v8, v23

    :goto_5
    if-eqz v8, :cond_10

    if-eq v8, v13, :cond_f

    const/4 v5, 0x2

    if-eq v8, v5, :cond_e

    .line 920
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data role: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1096
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    return-void

    .line 917
    :cond_e
    const/4 v5, 0x0

    .line 918
    .local v5, "dataRole":I
    goto :goto_6

    .line 914
    .end local v5    # "dataRole":I
    :cond_f
    const/4 v5, 0x2

    .line 915
    .restart local v5    # "dataRole":I
    goto :goto_6

    .line 911
    .end local v5    # "dataRole":I
    :cond_10
    const/4 v5, 0x1

    .line 912
    .restart local v5    # "dataRole":I
    nop

    .line 923
    :goto_6
    :try_start_4
    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_11

    .line 924
    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v8, v0, v4, v5, v6}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 930
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 931
    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v10, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v12, v10, v11}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 934
    .end local v0    # "portId":Ljava/lang/String;
    .end local v4    # "powerRole":I
    .end local v5    # "dataRole":I
    :cond_11
    move-object/from16 v4, p1

    move-object v2, v3

    goto/16 :goto_1a

    .line 891
    :cond_12
    move-object/from16 v9, v24

    .line 934
    :try_start_5
    const-string v11, "add-port"

    const/16 v16, 0x0

    aget-object v13, v3, v16

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v13, "ufp"

    const-string v2, "dfp"

    if-eqz v11, :cond_19

    :try_start_6
    array-length v11, v3

    move-object/from16 v28, v9

    const/4 v9, 0x3

    if-ne v11, v9, :cond_1a

    .line 935
    const/4 v0, 0x1

    aget-object v4, v3, v0

    move-object v0, v4

    .line 937
    .restart local v0    # "portId":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_13
    goto :goto_7

    :sswitch_0
    const-string v2, "none"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v8, 0x3

    goto :goto_8

    :sswitch_1
    const-string v2, "dual"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v8, 0x2

    goto :goto_8

    :sswitch_2
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v8, 0x0

    goto :goto_8

    :sswitch_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v8, 0x1

    goto :goto_8

    :goto_7
    move/from16 v8, v23

    :goto_8
    if-eqz v8, :cond_17

    const/4 v2, 0x1

    if-eq v8, v2, :cond_16

    const/4 v2, 0x2

    if-eq v8, v2, :cond_15

    const/4 v2, 0x3

    if-eq v8, v2, :cond_14

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1096
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 952
    return-void

    .line 948
    :cond_14
    const/4 v2, 0x0

    .line 949
    .local v2, "supportedModes":I
    goto :goto_9

    .line 945
    .end local v2    # "supportedModes":I
    :cond_15
    const/4 v2, 0x3

    .line 946
    .restart local v2    # "supportedModes":I
    goto :goto_9

    .line 942
    .end local v2    # "supportedModes":I
    :cond_16
    const/4 v2, 0x2

    .line 943
    .restart local v2    # "supportedModes":I
    goto :goto_9

    .line 939
    .end local v2    # "supportedModes":I
    :cond_17
    const/4 v2, 0x1

    .line 940
    .restart local v2    # "supportedModes":I
    nop

    .line 954
    :goto_9
    :try_start_7
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_18

    .line 955
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4, v0, v2, v6}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 956
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 957
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v8, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v5, v12, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 960
    .end local v0    # "portId":Ljava/lang/String;
    .end local v2    # "supportedModes":I
    :cond_18
    move-object/from16 v4, p1

    move-object v2, v3

    goto/16 :goto_1a

    .line 934
    :cond_19
    move-object/from16 v28, v9

    :cond_1a
    const-wide/16 v25, 0x0

    .line 960
    :try_start_8
    const-string v9, "connect-port"

    move-object/from16 v29, v12

    const/4 v11, 0x0

    aget-object v12, v3, v11

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_2e

    :try_start_9
    array-length v9, v3

    const/4 v11, 0x5

    if-ne v9, v11, :cond_2e

    .line 961
    const/4 v0, 0x1

    aget-object v9, v3, v0

    move-object/from16 v0, v28

    .line 963
    .local v9, "portId":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v11, v3, v5

    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 964
    .local v5, "canChangeMode":Z
    if-eqz v5, :cond_1b

    const/4 v11, 0x2

    :try_start_a
    aget-object v12, v3, v11

    invoke-static {v12}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_a

    :cond_1b
    const/4 v11, 0x2

    :try_start_b
    aget-object v12, v3, v11

    move-object v11, v12

    :goto_a
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v28, v15

    .end local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v28, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const v15, 0x1842e

    if-eq v12, v15, :cond_1e

    const v2, 0x1c3ff

    if-eq v12, v2, :cond_1d

    :cond_1c
    goto :goto_b

    :cond_1d
    :try_start_c
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_c

    :cond_1e
    :try_start_d
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_c

    :goto_b
    move/from16 v2, v23

    :goto_c
    if-eqz v2, :cond_20

    const/4 v11, 0x1

    if-eq v2, v11, :cond_1f

    .line 972
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1096
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    return-void

    .line 969
    :cond_1f
    const/4 v2, 0x2

    .line 970
    .local v2, "mode":I
    goto :goto_d

    .line 966
    .end local v2    # "mode":I
    :cond_20
    const/4 v2, 0x1

    .line 967
    .restart local v2    # "mode":I
    nop

    .line 976
    :goto_d
    const/4 v11, 0x3

    :try_start_f
    aget-object v12, v3, v11

    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move/from16 v27, v11

    .line 977
    .local v27, "canChangePowerRole":Z
    if-eqz v27, :cond_21

    const/4 v11, 0x3

    :try_start_10
    aget-object v12, v3, v11

    invoke-static {v12}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_e

    :cond_21
    const/4 v11, 0x3

    :try_start_11
    aget-object v12, v3, v11

    move-object v11, v12

    :goto_e
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const v13, -0x356f97e5    # -4731917.5f

    if-eq v12, v13, :cond_24

    const v13, 0x35de93

    if-eq v12, v13, :cond_23

    :cond_22
    goto :goto_f

    :cond_23
    :try_start_12
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v8, :cond_22

    const/4 v8, 0x1

    goto :goto_10

    :cond_24
    :try_start_13
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v8, :cond_22

    const/4 v8, 0x0

    goto :goto_10

    :goto_f
    move/from16 v8, v23

    :goto_10
    if-eqz v8, :cond_26

    const/4 v11, 0x1

    if-eq v8, v11, :cond_25

    .line 985
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 1096
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    return-void

    .line 982
    :cond_25
    const/4 v0, 0x2

    .line 983
    .local v0, "powerRole":I
    goto :goto_11

    .line 979
    .end local v0    # "powerRole":I
    :cond_26
    const/4 v0, 0x1

    .line 980
    .restart local v0    # "powerRole":I
    nop

    .line 989
    :goto_11
    const/4 v8, 0x4

    :try_start_15
    aget-object v11, v3, v8

    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 990
    .local v4, "canChangeDataRole":Z
    if-eqz v4, :cond_27

    const/4 v8, 0x4

    :try_start_16
    aget-object v11, v3, v8

    invoke-static {v11}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_12

    :cond_27
    const/4 v8, 0x4

    :try_start_17
    aget-object v11, v3, v8

    move-object v8, v11

    :goto_12
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const v12, -0x4f94e1aa

    if-eq v11, v12, :cond_2a

    const v12, 0x30f5a8

    if-eq v11, v12, :cond_29

    :cond_28
    goto :goto_13

    :cond_29
    :try_start_18
    const-string v10, "host"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v8, :cond_28

    const/4 v8, 0x0

    goto :goto_14

    :cond_2a
    :try_start_19
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v8, :cond_28

    const/4 v8, 0x1

    goto :goto_14

    :goto_13
    move/from16 v8, v23

    :goto_14
    if-eqz v8, :cond_2c

    const/4 v10, 0x1

    if-eq v8, v10, :cond_2b

    .line 998
    :try_start_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid data role: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 1096
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    return-void

    .line 995
    :cond_2b
    const/4 v8, 0x2

    .line 996
    .local v8, "dataRole":I
    move/from16 v20, v8

    goto :goto_15

    .line 992
    .end local v8    # "dataRole":I
    :cond_2c
    const/4 v8, 0x1

    .line 993
    .restart local v8    # "dataRole":I
    move/from16 v20, v8

    .line 1001
    .end local v8    # "dataRole":I
    .local v20, "dataRole":I
    :goto_15
    :try_start_1b
    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_2d

    .line 1002
    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    move v10, v2

    move v11, v5

    move-wide/from16 v14, v25

    move-object/from16 v13, v29

    move v12, v0

    move/from16 v21, v2

    move-object v2, v13

    .end local v2    # "mode":I
    .local v21, "mode":I
    move/from16 v13, v27

    move-object/from16 v29, v2

    move-wide v2, v14

    move/from16 v14, v20

    move-object/from16 v22, v28

    .end local v28    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v15, v4

    move-object/from16 v16, v6

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1004
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1005
    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v10, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    move-object/from16 v11, v29

    invoke-virtual {v8, v10, v11, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_16

    .line 1001
    .end local v21    # "mode":I
    .end local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "mode":I
    .restart local v28    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2d
    move/from16 v21, v2

    move-object/from16 v22, v28

    .line 1008
    .end local v0    # "powerRole":I
    .end local v2    # "mode":I
    .end local v4    # "canChangeDataRole":Z
    .end local v5    # "canChangeMode":Z
    .end local v9    # "portId":Ljava/lang/String;
    .end local v20    # "dataRole":I
    .end local v27    # "canChangePowerRole":Z
    .end local v28    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_16
    move-object/from16 v4, p1

    move-object/from16 v2, p3

    goto/16 :goto_1a

    .line 1096
    .end local v19    # "dumpAsProto":Z
    .end local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v2, p3

    goto/16 :goto_1b

    .line 960
    .restart local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "dumpAsProto":Z
    :cond_2e
    move-object/from16 v22, v15

    move-wide/from16 v2, v25

    move-object/from16 v11, v29

    .line 1008
    .end local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_1c
    const-string v4, "disconnect-port"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    move-wide v8, v2

    const/4 v3, 0x0

    move-object/from16 v2, p3

    :try_start_1d
    aget-object v10, v2, v3

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    .line 1009
    const/4 v0, 0x1

    aget-object v0, v2, v0

    .line 1010
    .local v0, "portId":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_2f

    .line 1011
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, v0, v6}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1012
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1013
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3, v4, v11, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1016
    .end local v0    # "portId":Ljava/lang/String;
    :cond_2f
    move-object/from16 v4, p1

    goto/16 :goto_1a

    :cond_30
    const-string v3, "remove-port"

    const/4 v4, 0x0

    aget-object v10, v2, v4

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    .line 1017
    const/4 v0, 0x1

    aget-object v0, v2, v0

    .line 1018
    .restart local v0    # "portId":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_31

    .line 1019
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, v0, v6}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1020
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1021
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3, v4, v11, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1024
    .end local v0    # "portId":Ljava/lang/String;
    :cond_31
    move-object/from16 v4, p1

    goto/16 :goto_1a

    :cond_32
    const-string v3, "reset"

    const/4 v4, 0x0

    aget-object v10, v2, v4

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    .line 1025
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_33

    .line 1026
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v6}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1027
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1028
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v3, v11, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 1025
    :cond_33
    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 1031
    :cond_34
    const-string v3, "set-contaminant-status"

    const/4 v4, 0x0

    aget-object v10, v2, v4

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_36

    .line 1032
    const/4 v0, 0x1

    aget-object v0, v2, v0

    .line 1033
    .restart local v0    # "portId":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1034
    .local v3, "wet":Ljava/lang/Boolean;
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_35

    .line 1035
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/usb/UsbPortManager;->simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1036
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1037
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v10, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5, v11, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1040
    .end local v0    # "portId":Ljava/lang/String;
    .end local v3    # "wet":Ljava/lang/Boolean;
    :cond_35
    move-object/from16 v4, p1

    goto/16 :goto_1a

    :cond_36
    const-string v3, "ports"

    const/4 v4, 0x0

    aget-object v10, v2, v4

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_38

    .line 1041
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_37

    .line 1042
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v3, v11, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 1041
    :cond_37
    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 1045
    :cond_38
    const-string v3, "dump-descriptors"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1046
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 1048
    :cond_39
    const-string v3, "Dump current USB state or issue command:"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    const-string v3, "  ports"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    const-string v3, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    const-string v3, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    const-string v3, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-string v3, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    const-string v3, "  disconnect-port <id>"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    const-string v3, "  remove-port <id>"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    const-string v3, "  reset"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1058
    const-string v3, "Example USB type C port role switch:"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    const-string v3, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1061
    const-string v3, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    const-string v3, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    const-string v3, "  dumpsys usb ports"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    const-string v3, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    const-string v3, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1069
    const-string v3, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    const-string v3, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1074
    const-string v3, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    const-string v0, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1079
    const-string v0, "Example USB device-only port:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1084
    const-string v0, "Example simulate contaminant status:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" true"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" false"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1089
    const-string v0, "Example USB device descriptors:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    const-string v0, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    const-string v0, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    const-string v0, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    const-string v0, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 1096
    .end local v19    # "dumpAsProto":Z
    .end local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v2, p3

    goto :goto_17

    :catchall_2
    move-exception v0

    move-object v2, v3

    :goto_17
    move-object/from16 v4, p1

    goto/16 :goto_1b

    .line 865
    .restart local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "dumpAsProto":Z
    :cond_3a
    move-object v2, v3

    move-object/from16 v22, v15

    .line 867
    .end local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_18
    if-eqz v19, :cond_3b

    .line 868
    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Landroid/util/proto/ProtoOutputStream;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    move-object/from16 v4, p1

    :try_start_1e
    invoke-direct {v3, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .local v0, "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_19

    .line 1096
    .end local v0    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .end local v19    # "dumpAsProto":Z
    .end local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    goto :goto_17

    .line 870
    .restart local v19    # "dumpAsProto":Z
    .restart local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3b
    move-object/from16 v4, p1

    const-string v0, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 872
    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v3, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 875
    .restart local v0    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_19
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_3c

    .line 876
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v5, "device_manager"

    const-wide v7, 0x10b00000001L

    invoke-virtual {v3, v0, v5, v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 878
    :cond_3c
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v3, :cond_3d

    .line 879
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const-string v5, "host_manager"

    const-wide v7, 0x10b00000002L

    invoke-virtual {v3, v0, v5, v7, v8}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 881
    :cond_3d
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_3e

    .line 882
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const-string v5, "port_manager"

    const-wide v7, 0x10b00000003L

    invoke-virtual {v3, v0, v5, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 884
    :cond_3e
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v5, "alsa_manager"

    const-wide v7, 0x10b00000004L

    invoke-virtual {v3, v0, v5, v7, v8}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 886
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string v5, "settings_manager"

    const-wide v7, 0x10b00000005L

    invoke-virtual {v3, v0, v5, v7, v8}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 888
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    const-string v5, "permissions_manager"

    const-wide v7, 0x10b00000006L

    invoke-virtual {v3, v0, v5, v7, v8}, Lcom/android/server/usb/UsbPermissionManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 890
    invoke-virtual {v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 891
    .end local v0    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    nop

    .line 1096
    .end local v19    # "dumpAsProto":Z
    .end local v22    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1097
    nop

    .line 1098
    return-void

    .line 1096
    :catchall_4
    move-exception v0

    goto :goto_1b

    :catchall_5
    move-exception v0

    move-object/from16 v4, p1

    move-object v2, v3

    :goto_1b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1097
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1842e -> :sswitch_3
        0x1c3ff -> :sswitch_2
        0x2f387c -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch
.end method

.method public enableContaminantDetection(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 822
    const-string v0, "portId must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 827
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    .line 828
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    nop

    .line 833
    return-void

    .line 831
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    throw v2
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "function"    # J

    .line 371
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 734
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "devices"    # Landroid/os/Bundle;

    .line 296
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 299
    :cond_0
    return-void
.end method

.method getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;
    .locals 1
    .param p1, "userId"    # I

    .line 190
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v0

    return-object v0
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;

    .line 793
    const-string v0, "portId must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 798
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    return-object v2

    .line 800
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    throw v2
.end method

.method public getPorts()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/ParcelableUsbPort;",
            ">;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 772
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 773
    nop

    .line 787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    return-object v2

    .line 775
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2

    .line 777
    .local v2, "ports":[Landroid/hardware/usb/UsbPort;
    array-length v3, v2

    .line 778
    .local v3, "numPorts":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v4, "parcelablePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/ParcelableUsbPort;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 780
    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 783
    .end local v5    # "i":I
    :cond_1
    nop

    .line 787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    return-object v4

    .line 787
    .end local v2    # "ports":[Landroid/hardware/usb/UsbPort;
    .end local v3    # "numPorts":I
    .end local v4    # "parcelablePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/ParcelableUsbPort;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    throw v2
.end method

.method public getScreenUnlockedFunctions()J
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .locals 1
    .param p1, "userId"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 584
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 587
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 589
    .local v1, "token":J
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    nop

    .line 593
    return-void

    .line 591
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    throw v3
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 571
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 574
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 576
    .local v1, "token":J
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    nop

    .line 580
    return-void

    .line 578
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    throw v3
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 531
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 533
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 535
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    return v4

    .line 537
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    throw v4
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 597
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 603
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 605
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    return v3

    .line 607
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    throw v3
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 517
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 518
    .local v1, "pid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 520
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 522
    .local v3, "token":J
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v1, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    return v5

    .line 524
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    throw v5
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 727
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "user"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    .line 291
    :cond_0
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 345
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 347
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 349
    .local v1, "user":I
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v2

    .line 351
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v5, v1, v6}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v0}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserPermissionManager;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 353
    return-object v5

    .line 356
    :cond_0
    :try_start_2
    const-string v5, "UsbService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " as user is not active."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 362
    goto :goto_0

    .line 359
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "uid":I
    .end local v1    # "user":I
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/usb/UsbService;
    .end local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    .restart local v0    # "uid":I
    .restart local v1    # "user":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/usb/UsbService;
    .restart local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 362
    throw v4

    .line 365
    .end local v0    # "uid":I
    .end local v1    # "user":I
    .end local v2    # "ident":J
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_1

    .line 307
    if-eqz p1, :cond_1

    .line 308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 309
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 310
    .local v8, "pid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 312
    .local v9, "user":I
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v10

    .line 314
    .local v10, "ident":J
    :try_start_0
    iget-object v12, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v2, v9, v3}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v4

    move-object v3, p1

    move-object v5, p2

    move v6, v8

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserPermissionManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 319
    :cond_0
    const-string v2, "UsbService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as user is not active."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 325
    goto :goto_1

    .line 322
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "uid":I
    .end local v8    # "pid":I
    .end local v9    # "user":I
    .end local v10    # "ident":J
    .end local p0    # "this":Lcom/android/server/usb/UsbService;
    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "uid":I
    .restart local v8    # "pid":I
    .restart local v9    # "user":I
    .restart local v10    # "ident":J
    .restart local p0    # "this":Lcom/android/server/usb/UsbService;
    .restart local p1    # "deviceName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 325
    throw v2

    .line 329
    .end local v1    # "uid":I
    .end local v8    # "pid":I
    .end local v9    # "user":I
    .end local v10    # "ident":J
    :cond_1
    :goto_1
    return-object v0
.end method

.method public removeAccessoryPackagesFromPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 465
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v0, "packageNames"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [Ljava/lang/String;

    .line 467
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 473
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    .line 474
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeAccessoryPackagesFromDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    nop

    .line 478
    return-void

    .line 476
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    throw v2
.end method

.method public removeDevicePackagesFromPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 447
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v0, "packageNames"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [Ljava/lang/String;

    .line 449
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 455
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    .line 456
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeDevicePackagesFromDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    nop

    .line 460
    return-void

    .line 458
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    throw v2
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 558
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 559
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 561
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 563
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    throw v4
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 544
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 545
    .local v7, "pid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 547
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 549
    .local v9, "token":J
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    nop

    .line 553
    return-void

    .line 551
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    throw v0
.end method

.method public resetUsbGadget()V
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "DeviceManager must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 760
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->resetUsbGadget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 763
    nop

    .line 764
    return-void

    .line 762
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 763
    throw v2
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 393
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 399
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 401
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    nop

    .line 406
    return-void

    .line 404
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    throw v3
.end method

.method public setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;ILandroid/os/UserHandle;Z)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "shouldBeGranted"    # Z

    .line 500
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 507
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    nop

    .line 512
    return-void

    .line 510
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    throw v2
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "usbDataUnlocked"    # Z

    .line 722
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    .line 723
    return-void
.end method

.method public setCurrentFunctions(J)V
    .locals 5
    .param p1, "functions"    # J

    .line 648
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 650
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 657
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isTmobileSku()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 659
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rndis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 660
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tether_checkbox_not_show_again"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 661
    .local v1, "skipShowDialog":Z
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/usb/UsbService;->mTetherDialogShow:Z

    if-nez v3, :cond_2

    .line 662
    new-instance v2, Lcom/android/server/usb/UsbService$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;J)V

    .line 705
    invoke-virtual {v2}, Lcom/android/server/usb/UsbService$2;->start()V

    goto :goto_1

    .line 707
    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/android/server/usb/UsbService;->setTetherState(IZ)V

    .line 708
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 710
    .end local v1    # "skipShowDialog":Z
    :goto_1
    goto :goto_2

    .line 711
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/server/usb/UsbService;->setTetherState(IZ)V

    .line 712
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 714
    .end local v0    # "mgr":Landroid/net/wifi/WifiManager;
    :goto_2
    goto :goto_3

    .line 715
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 718
    :goto_3
    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 377
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 382
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 384
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    throw v3
.end method

.method public setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;ILandroid/os/UserHandle;Z)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "shouldBeGranted"    # Z

    .line 483
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    nop

    .line 495
    return-void

    .line 493
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    throw v2
.end method

.method public setOtgEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1103
    if-eqz p1, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const-string v1, "persist.sys.oem.otg_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .line 806
    const-string v0, "portId must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 807
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 808
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 812
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    .line 813
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    nop

    .line 818
    return-void

    .line 816
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    throw v2
.end method

.method public setScreenUnlockedFunctions(J)V
    .locals 3
    .param p1, "functions"    # J

    .line 739
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 743
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    .line 744
    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "usbDeviceConnectionHandler"    # Landroid/content/ComponentName;

    .line 837
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 840
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 847
    :cond_0
    monitor-exit v0

    .line 848
    return-void

    .line 844
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only the current user can register a usb connection handler"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbService;
    .end local p1    # "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    throw v1

    .line 847
    .restart local p0    # "this":Lcom/android/server/usb/UsbService;
    .restart local p1    # "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 269
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 278
    :cond_2
    return-void
.end method
