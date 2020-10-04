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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mTetherDialogShow:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private notShowAgain:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/server/usb/UsbService;->mTetherDialogShow:Z

    .line 159
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 166
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 168
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 169
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 170
    new-instance v1, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 172
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 173
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.usb.host"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    new-instance v2, Lcom/android/server/usb/UsbHostManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 176
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_3

    .line 180
    :cond_2
    new-instance v2, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 183
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 185
    new-instance v0, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 198
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v2, "filter":Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 200
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 94
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 94
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 94
    iget-boolean v0, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/usb/UsbService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/android/server/usb/UsbService;->mTetherDialogShow:Z

    return p1
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .locals 1
    .param p1, "userIdInt"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private onStopUser(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "stoppedUser"    # Landroid/os/UserHandle;

    .line 233
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    .line 234
    return-void
.end method

.method private onSwitchUser(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 210
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 216
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 217
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    .line 218
    .local v1, "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 224
    .end local v1    # "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :cond_1
    monitor-exit v0

    .line 225
    return-void

    .line 224
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

    .line 991
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bootCompleted()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 254
    :cond_0
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 474
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 480
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 482
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    nop

    .line 486
    return-void

    .line 484
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 737
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

    .line 739
    :cond_0
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v6, v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 740
    .local v6, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 742
    .local v17, "ident":J
    :try_start_0
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v8

    .line 743
    .local v15, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v15, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 745
    const/4 v8, 0x0

    .line 746
    .local v8, "dumpAsProto":Z
    const-string v9, "--proto"

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v9, :cond_1

    .line 747
    const/4 v8, 0x1

    move/from16 v19, v8

    goto :goto_0

    .line 746
    :cond_1
    move/from16 v19, v8

    .line 750
    .end local v8    # "dumpAsProto":Z
    .local v19, "dumpAsProto":Z
    :goto_0
    if-eqz v3, :cond_39

    :try_start_1
    array-length v8, v3

    if-eqz v8, :cond_39

    const/4 v8, 0x0

    aget-object v9, v3, v8

    const-string v10, "-a"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    if-eqz v19, :cond_2

    move-object v8, v3

    move-object v3, v15

    goto/16 :goto_18

    .line 774
    :cond_2
    const-string/jumbo v9, "set-port-roles"

    aget-object v10, v3, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string/jumbo v10, "source"

    const/4 v13, 0x4

    const-string v8, ""

    const/4 v14, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_12

    :try_start_2
    array-length v9, v3

    if-ne v9, v13, :cond_12

    .line 775
    aget-object v0, v3, v12

    .line 777
    .local v0, "portId":Ljava/lang/String;
    aget-object v4, v3, v11

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v9, -0x356f97e5    # -4731917.5f

    if-eq v5, v9, :cond_6

    const v9, -0x1a426a07

    if-eq v5, v9, :cond_5

    const v9, 0x35de93

    if-eq v5, v9, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string/jumbo v5, "sink"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v12

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "no-power"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v11

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_9

    if-eq v4, v12, :cond_8

    if-eq v4, v11, :cond_7

    .line 788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid power role: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 979
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 789
    return-void

    .line 785
    :cond_7
    const/4 v4, 0x0

    .line 786
    .local v4, "powerRole":I
    goto :goto_3

    .line 782
    .end local v4    # "powerRole":I
    :cond_8
    const/4 v4, 0x2

    .line 783
    .restart local v4    # "powerRole":I
    goto :goto_3

    .line 779
    .end local v4    # "powerRole":I
    :cond_9
    const/4 v4, 0x1

    .line 780
    .restart local v4    # "powerRole":I
    nop

    .line 792
    :goto_3
    :try_start_3
    aget-object v5, v3, v14

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x4f94e1aa

    if-eq v9, v10, :cond_d

    const v10, 0x30f5a8

    if-eq v9, v10, :cond_c

    const v10, 0x7b007436

    if-eq v9, v10, :cond_b

    :cond_a
    goto :goto_4

    :cond_b
    const-string/jumbo v9, "no-data"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v11

    goto :goto_5

    :cond_c
    const-string v9, "host"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_5

    :cond_d
    const-string v9, "device"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v12

    goto :goto_5

    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eqz v5, :cond_10

    if-eq v5, v12, :cond_f

    if-eq v5, v11, :cond_e

    .line 803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data role: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v14

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 979
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 804
    return-void

    .line 800
    :cond_e
    const/4 v5, 0x0

    .line 801
    .local v5, "dataRole":I
    goto :goto_6

    .line 797
    .end local v5    # "dataRole":I
    :cond_f
    const/4 v5, 0x2

    .line 798
    .restart local v5    # "dataRole":I
    goto :goto_6

    .line 794
    .end local v5    # "dataRole":I
    :cond_10
    const/4 v5, 0x1

    .line 795
    .restart local v5    # "dataRole":I
    nop

    .line 806
    :goto_6
    :try_start_4
    iget-object v9, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v9, :cond_11

    .line 807
    iget-object v9, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v9, v0, v4, v5, v6}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 813
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 814
    iget-object v9, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v10, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 817
    .end local v0    # "portId":Ljava/lang/String;
    .end local v4    # "powerRole":I
    .end local v5    # "dataRole":I
    :cond_11
    move-object/from16 v4, p1

    move-object v8, v3

    goto/16 :goto_1a

    :cond_12
    :try_start_5
    const-string v9, "add-port"

    const/16 v21, 0x0

    aget-object v13, v3, v21

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v9, :cond_19

    :try_start_6
    array-length v9, v3

    if-ne v9, v14, :cond_19

    .line 818
    aget-object v0, v3, v12

    .line 820
    .restart local v0    # "portId":Ljava/lang/String;
    aget-object v4, v3, v11

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_13
    goto :goto_7

    :sswitch_0
    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v14

    goto :goto_8

    :sswitch_1
    const-string v5, "dual"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v11

    goto :goto_8

    :sswitch_2
    const-string/jumbo v5, "ufp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    goto :goto_8

    :sswitch_3
    const-string v5, "dfp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v12

    goto :goto_8

    :goto_7
    const/4 v4, -0x1

    :goto_8
    if-eqz v4, :cond_17

    if-eq v4, v12, :cond_16

    if-eq v4, v11, :cond_15

    if-eq v4, v14, :cond_14

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 979
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 835
    return-void

    .line 831
    :cond_14
    const/4 v4, 0x0

    .line 832
    .local v4, "supportedModes":I
    goto :goto_9

    .line 828
    .end local v4    # "supportedModes":I
    :cond_15
    const/4 v4, 0x3

    .line 829
    .restart local v4    # "supportedModes":I
    goto :goto_9

    .line 825
    .end local v4    # "supportedModes":I
    :cond_16
    const/4 v4, 0x2

    .line 826
    .restart local v4    # "supportedModes":I
    goto :goto_9

    .line 822
    .end local v4    # "supportedModes":I
    :cond_17
    const/4 v4, 0x1

    .line 823
    .restart local v4    # "supportedModes":I
    nop

    .line 837
    :goto_9
    :try_start_7
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_18

    .line 838
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 839
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 840
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v10, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v9, v8, v10, v11}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 843
    .end local v0    # "portId":Ljava/lang/String;
    .end local v4    # "supportedModes":I
    :cond_18
    move-object/from16 v4, p1

    move-object v8, v3

    goto/16 :goto_1a

    .line 817
    :cond_19
    const-wide/16 v22, 0x0

    .line 843
    :try_start_8
    const-string v9, "connect-port"

    const/4 v13, 0x0

    aget-object v14, v3, v13

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_2d

    :try_start_9
    array-length v9, v3

    const/4 v13, 0x5

    if-ne v9, v13, :cond_2d

    .line 844
    aget-object v9, v3, v12

    .line 846
    .local v9, "portId":Ljava/lang/String;
    aget-object v0, v3, v11

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 847
    .local v0, "canChangeMode":Z
    if-eqz v0, :cond_1a

    :try_start_a
    aget-object v5, v3, v11

    invoke-static {v5}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_a

    :cond_1a
    :try_start_b
    aget-object v5, v3, v11

    :goto_a
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const v14, 0x1842e

    if-eq v13, v14, :cond_1d

    const v14, 0x1c3ff

    if-eq v13, v14, :cond_1c

    :cond_1b
    goto :goto_b

    :cond_1c
    :try_start_c
    const-string/jumbo v13, "ufp"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    goto :goto_c

    :cond_1d
    :try_start_d
    const-string v13, "dfp"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v5, :cond_1b

    move v5, v12

    goto :goto_c

    :goto_b
    const/4 v5, -0x1

    :goto_c
    if-eqz v5, :cond_1f

    if-eq v5, v12, :cond_1e

    .line 855
    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 979
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 856
    return-void

    .line 852
    :cond_1e
    const/4 v5, 0x2

    .line 853
    .local v5, "mode":I
    goto :goto_d

    .line 849
    .end local v5    # "mode":I
    :cond_1f
    const/4 v5, 0x1

    .line 850
    .restart local v5    # "mode":I
    nop

    .line 859
    :goto_d
    const/4 v11, 0x3

    :try_start_f
    aget-object v13, v3, v11

    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move/from16 v24, v11

    .line 860
    .local v24, "canChangePowerRole":Z
    if-eqz v24, :cond_20

    const/4 v11, 0x3

    :try_start_10
    aget-object v13, v3, v11

    invoke-static {v13}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object v13, v11

    goto :goto_e

    :cond_20
    const/4 v11, 0x3

    :try_start_11
    aget-object v13, v3, v11

    :goto_e
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const v14, -0x356f97e5    # -4731917.5f

    if-eq v11, v14, :cond_23

    const v14, 0x35de93

    if-eq v11, v14, :cond_22

    :cond_21
    goto :goto_f

    :cond_22
    :try_start_12
    const-string/jumbo v10, "sink"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v10, :cond_21

    move v10, v12

    goto :goto_10

    :cond_23
    :try_start_13
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v10, :cond_21

    const/4 v10, 0x0

    goto :goto_10

    :goto_f
    const/4 v10, -0x1

    :goto_10
    if-eqz v10, :cond_25

    if-eq v10, v12, :cond_24

    .line 868
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid power role: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 979
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 869
    return-void

    .line 865
    :cond_24
    const/4 v10, 0x2

    .line 866
    .local v10, "powerRole":I
    move/from16 v20, v10

    goto :goto_11

    .line 862
    .end local v10    # "powerRole":I
    :cond_25
    const/4 v10, 0x1

    .line 863
    .restart local v10    # "powerRole":I
    move/from16 v20, v10

    .line 872
    .end local v10    # "powerRole":I
    .local v20, "powerRole":I
    :goto_11
    const/4 v10, 0x4

    :try_start_15
    aget-object v11, v3, v10

    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 873
    .local v4, "canChangeDataRole":Z
    if-eqz v4, :cond_26

    const/4 v10, 0x4

    :try_start_16
    aget-object v11, v3, v10

    invoke-static {v11}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_12

    :cond_26
    const/4 v10, 0x4

    :try_start_17
    aget-object v11, v3, v10

    move-object v10, v11

    :goto_12
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const v13, -0x4f94e1aa

    if-eq v11, v13, :cond_29

    const v13, 0x30f5a8

    if-eq v11, v13, :cond_28

    :cond_27
    goto :goto_13

    :cond_28
    :try_start_18
    const-string v11, "host"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v10, :cond_27

    const/4 v10, 0x0

    goto :goto_14

    :cond_29
    :try_start_19
    const-string v11, "device"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v10, :cond_27

    move v10, v12

    goto :goto_14

    :goto_13
    const/4 v10, -0x1

    :goto_14
    if-eqz v10, :cond_2b

    if-eq v10, v12, :cond_2a

    .line 881
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

    .line 979
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    return-void

    .line 878
    :cond_2a
    const/4 v10, 0x2

    .line 879
    .local v10, "dataRole":I
    move/from16 v21, v10

    goto :goto_15

    .line 875
    .end local v10    # "dataRole":I
    :cond_2b
    const/4 v10, 0x1

    .line 876
    .restart local v10    # "dataRole":I
    move/from16 v21, v10

    .line 884
    .end local v10    # "dataRole":I
    .local v21, "dataRole":I
    :goto_15
    :try_start_1b
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v10, :cond_2c

    .line 885
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    move-object v14, v8

    move-object v8, v10

    move v10, v5

    move-wide/from16 v12, v22

    move v11, v0

    move-wide v2, v12

    move/from16 v12, v20

    move/from16 v13, v24

    move-object v2, v14

    move/from16 v14, v21

    move-object v3, v15

    .end local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v15, v4

    move-object/from16 v16, v6

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 887
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 888
    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v10, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v13, 0x0

    invoke-virtual {v8, v10, v2, v13, v14}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_16

    .line 884
    .end local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2c
    move-object v3, v15

    .line 891
    .end local v0    # "canChangeMode":Z
    .end local v4    # "canChangeDataRole":Z
    .end local v5    # "mode":I
    .end local v9    # "portId":Ljava/lang/String;
    .end local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "powerRole":I
    .end local v21    # "dataRole":I
    .end local v24    # "canChangePowerRole":Z
    .restart local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_16
    move-object/from16 v4, p1

    move-object/from16 v8, p3

    goto/16 :goto_1a

    .line 979
    .end local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "dumpAsProto":Z
    :catchall_0
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    goto/16 :goto_1b

    .line 843
    .restart local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "dumpAsProto":Z
    :cond_2d
    move-object v2, v8

    move-object v3, v15

    move-wide/from16 v13, v22

    .line 891
    .end local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_1c
    const-string v4, "disconnect-port"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    move-object/from16 v8, p3

    move-wide v9, v13

    const/4 v13, 0x0

    :try_start_1d
    aget-object v14, v8, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    array-length v4, v8

    if-ne v4, v11, :cond_2f

    .line 892
    aget-object v0, v8, v12

    .line 893
    .local v0, "portId":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_2e

    .line 894
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4, v0, v6}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 895
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 896
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 899
    .end local v0    # "portId":Ljava/lang/String;
    :cond_2e
    move-object/from16 v4, p1

    goto/16 :goto_1a

    :cond_2f
    const-string/jumbo v4, "remove-port"

    const/4 v13, 0x0

    aget-object v14, v8, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    array-length v4, v8

    if-ne v4, v11, :cond_31

    .line 900
    aget-object v0, v8, v12

    .line 901
    .restart local v0    # "portId":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_30

    .line 902
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4, v0, v6}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 903
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 904
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 907
    .end local v0    # "portId":Ljava/lang/String;
    :cond_30
    move-object/from16 v4, p1

    goto/16 :goto_1a

    :cond_31
    const-string/jumbo v4, "reset"

    const/4 v13, 0x0

    aget-object v14, v8, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    array-length v4, v8

    if-ne v4, v12, :cond_33

    .line 908
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_32

    .line 909
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v6}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 910
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 911
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v4, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 908
    :cond_32
    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 914
    :cond_33
    const-string/jumbo v4, "set-contaminant-status"

    const/4 v13, 0x0

    aget-object v14, v8, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    array-length v4, v8

    const/4 v13, 0x3

    if-ne v4, v13, :cond_35

    .line 915
    aget-object v0, v8, v12

    .line 916
    .restart local v0    # "portId":Ljava/lang/String;
    aget-object v4, v8, v11

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 917
    .local v4, "wet":Ljava/lang/Boolean;
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_34

    .line 918
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v5, v0, v11, v6}, Lcom/android/server/usb/UsbPortManager;->simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 919
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 920
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v11, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v12, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5, v11, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 923
    .end local v0    # "portId":Ljava/lang/String;
    .end local v4    # "wet":Ljava/lang/Boolean;
    :cond_34
    move-object/from16 v4, p1

    goto/16 :goto_1a

    :cond_35
    const-string/jumbo v4, "ports"

    const/4 v11, 0x0

    aget-object v13, v8, v11

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    array-length v4, v8

    if-ne v4, v12, :cond_37

    .line 924
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_36

    .line 925
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v4, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 924
    :cond_36
    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 928
    :cond_37
    const-string v2, "dump-descriptors"

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 929
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, v6, v8}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 931
    :cond_38
    const-string v2, "Dump current USB state or issue command:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 932
    const-string v2, "  ports"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 933
    const-string v2, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 934
    const-string v2, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 935
    const-string v2, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 936
    const-string v2, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 937
    const-string v2, "  disconnect-port <id>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 938
    const-string v2, "  remove-port <id>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 939
    const-string v2, "  reset"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 941
    const-string v2, "Example USB type C port role switch:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 942
    const-string v2, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 944
    const-string v2, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 946
    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 947
    const-string v2, "  dumpsys usb ports"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 948
    const-string v2, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 949
    const-string v2, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 952
    const-string v2, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 954
    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 957
    const-string v2, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 959
    const-string v0, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 962
    const-string v0, "Example USB device-only port:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 963
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 964
    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 967
    const-string v0, "Example simulate contaminant status:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 968
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 969
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" true"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 970
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" false"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 972
    const-string v0, "Example USB device descriptors:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 973
    const-string v0, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 974
    const-string v0, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 975
    const-string v0, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 976
    const-string v0, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto/16 :goto_1a

    .line 979
    .end local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "dumpAsProto":Z
    :catchall_1
    move-exception v0

    move-object/from16 v8, p3

    goto :goto_17

    :catchall_2
    move-exception v0

    move-object v8, v3

    :goto_17
    move-object/from16 v4, p1

    goto/16 :goto_1b

    .line 750
    .restart local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "dumpAsProto":Z
    :cond_39
    move-object v8, v3

    move-object v3, v15

    .line 752
    .end local v15    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_18
    if-eqz v19, :cond_3a

    .line 753
    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    move-object/from16 v4, p1

    :try_start_1e
    invoke-direct {v2, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .local v0, "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_19

    .line 979
    .end local v0    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .end local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "dumpAsProto":Z
    :catchall_3
    move-exception v0

    goto :goto_17

    .line 755
    .restart local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "dumpAsProto":Z
    :cond_3a
    move-object/from16 v4, p1

    const-string v0, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 757
    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 760
    .restart local v0    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_19
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_3b

    .line 761
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v5, "device_manager"

    const-wide v9, 0x10b00000001L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 763
    :cond_3b
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_3c

    .line 764
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const-string v5, "host_manager"

    const-wide v9, 0x10b00000002L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 766
    :cond_3c
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_3d

    .line 767
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const-string/jumbo v5, "port_manager"

    const-wide v9, 0x10b00000003L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 769
    :cond_3d
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v5, "alsa_manager"

    const-wide v9, 0x10b00000004L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 771
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v5, "settings_manager"

    const-wide v9, 0x10b00000005L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 773
    invoke-virtual {v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 774
    .end local v0    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    nop

    .line 979
    .end local v3    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "dumpAsProto":Z
    :goto_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    nop

    .line 981
    return-void

    .line 979
    :catchall_4
    move-exception v0

    goto :goto_1b

    :catchall_5
    move-exception v0

    move-object/from16 v4, p1

    move-object v8, v3

    :goto_1b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 707
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 712
    .local v2, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "function"    # J

    .line 340
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "devices"    # Landroid/os/Bundle;

    .line 266
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 269
    :cond_0
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;

    .line 678
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 683
    .local v2, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    return-object v1

    .line 685
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
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

    .line 653
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 657
    .local v2, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 658
    nop

    .line 672
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 658
    return-object v1

    .line 660
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v0

    .line 662
    .local v0, "ports":[Landroid/hardware/usb/UsbPort;
    array-length v1, v0

    .line 663
    .local v1, "numPorts":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v4, "parcelablePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/ParcelableUsbPort;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 665
    aget-object v6, v0, v5

    invoke-static {v6}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 668
    .end local v5    # "i":I
    :cond_1
    nop

    .line 672
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    return-object v4

    .line 672
    .end local v0    # "ports":[Landroid/hardware/usb/UsbPort;
    .end local v1    # "numPorts":I
    .end local v4    # "parcelablePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/ParcelableUsbPort;>;"
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getScreenUnlockedFunctions()J
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 648
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 445
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 448
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 450
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 435
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 437
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    nop

    .line 441
    return-void

    .line 439
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 392
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 393
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 395
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 397
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    return v4

    .line 399
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 458
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 464
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 466
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    return v3

    .line 468
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 380
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 382
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 384
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    return v4

    .line 386
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 625
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

    .line 258
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 314
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 316
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 318
    .local v1, "user":I
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v2

    .line 320
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v5, v1, v6}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v0}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 322
    return-object v5

    .line 325
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

    .line 328
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 331
    goto :goto_0

    .line 328
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

    .line 330
    .restart local v0    # "uid":I
    .restart local v1    # "user":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/usb/UsbService;
    .restart local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw v4

    .line 334
    .end local v0    # "uid":I
    .end local v1    # "user":I
    .end local v2    # "ident":J
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_1

    .line 277
    if-eqz p1, :cond_1

    .line 278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 279
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 281
    .local v2, "user":I
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v3

    .line 283
    .local v3, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    :try_start_1
    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v7, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v6, v2, v7}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v7

    invoke-virtual {v6, p1, v7, p2, v1}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 288
    :cond_0
    const-string v6, "UsbService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " as user is not active."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 294
    goto :goto_1

    .line 291
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "uid":I
    .end local v2    # "user":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/usb/UsbService;
    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 293
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "uid":I
    .restart local v2    # "user":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/usb/UsbService;
    .restart local p1    # "deviceName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw v5

    .line 298
    .end local v1    # "uid":I
    .end local v2    # "user":I
    .end local v3    # "ident":J
    :cond_1
    :goto_1
    return-object v0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 419
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 420
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 422
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 424
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    nop

    .line 428
    return-void

    .line 426
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 406
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 408
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 410
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    nop

    .line 414
    return-void

    .line 412
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 362
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 364
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 368
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 370
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    nop

    .line 375
    return-void

    .line 373
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "usbDataUnlocked"    # Z

    .line 620
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    .line 621
    return-void
.end method

.method public setCurrentFunctions(J)V
    .locals 5
    .param p1, "functions"    # J

    .line 498
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 500
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

    .line 507
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isTmobileSku()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 508
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 509
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rndis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 510
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tether_checkbox_not_show_again"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 511
    .local v1, "skipShowDialog":Z
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/usb/UsbService;->mTetherDialogShow:Z

    if-nez v3, :cond_2

    .line 512
    new-instance v2, Lcom/android/server/usb/UsbService$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;Landroid/net/wifi/WifiManager;J)V

    .line 603
    invoke-virtual {v2}, Lcom/android/server/usb/UsbService$2;->start()V

    goto :goto_1

    .line 605
    :cond_2
    invoke-virtual {v0, v2, v2}, Landroid/net/wifi/WifiManager;->setTetherState(IZ)V

    .line 606
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 608
    .end local v1    # "skipShowDialog":Z
    :goto_1
    goto :goto_2

    .line 609
    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setTetherState(IZ)V

    .line 610
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 612
    .end local v0    # "mgr":Landroid/net/wifi/WifiManager;
    :goto_2
    goto :goto_3

    .line 613
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 616
    :goto_3
    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 346
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 348
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 351
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 353
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    nop

    .line 358
    return-void

    .line 356
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setOtgEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 986
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const-string/jumbo v1, "persist.sys.oem.otg_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .line 691
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 693
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 697
    .local v2, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    nop

    .line 703
    return-void

    .line 701
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setScreenUnlockedFunctions(J)V
    .locals 3
    .param p1, "functions"    # J

    .line 637
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 639
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 641
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    .line 642
    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "usbDeviceConnectionHandler"    # Landroid/content/ComponentName;

    .line 722
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 725
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 732
    :cond_0
    monitor-exit v0

    .line 733
    return-void

    .line 729
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only the current user can register a usb connection handler"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbService;
    .end local p1    # "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    throw v1

    .line 732
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

    .line 237
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 239
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 248
    :cond_2
    return-void
.end method
