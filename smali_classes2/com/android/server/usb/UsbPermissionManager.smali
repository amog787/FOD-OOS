.class Lcom/android/server/usb/UsbPermissionManager;
.super Ljava/lang/Object;
.source "UsbPermissionManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPermissionsByUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usb/UsbUserPermissionManager;",
            ">;"
        }
    .end annotation
.end field

.field final mUsbService:Lcom/android/server/usb/UsbService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbPermissionManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usbService"    # Lcom/android/server/usb/UsbService;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    .line 53
    iput-object p1, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/usb/UsbPermissionManager;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 55
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 11
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 122
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 123
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 124
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v3

    .line 125
    :try_start_0
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 127
    .local v5, "numUsers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 128
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v7

    const-string v8, "user_permissions"

    const-wide v9, 0x20b00000001L

    invoke-virtual {v7, p1, v8, v9, v10}, Lcom/android/server/usb/UsbUserPermissionManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 131
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "numUsers":I
    .end local v6    # "i":I
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;
    .locals 6
    .param p1, "userId"    # I

    .line 58
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbUserPermissionManager;

    .line 60
    .local v1, "permissions":Lcom/android/server/usb/UsbUserPermissionManager;
    if-nez v1, :cond_0

    .line 61
    new-instance v2, Lcom/android/server/usb/UsbUserPermissionManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    .line 61
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbPermissionManager;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 62
    invoke-virtual {v4, p1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/usb/UsbUserPermissionManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V

    move-object v1, v2

    .line 63
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    :cond_0
    monitor-exit v0

    return-object v1

    .line 66
    .end local v1    # "permissions":Lcom/android/server/usb/UsbUserPermissionManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPermissionsForUser(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbUserPermissionManager;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 70
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v0

    return-object v0
.end method

.method remove(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userToRemove"    # Landroid/os/UserHandle;

    .line 74
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 108
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbUserPermissionManager;->removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 119
    return-void

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbUserPermissionManager;->removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 100
    return-void

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
