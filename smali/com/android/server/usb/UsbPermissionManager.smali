.class Lcom/android/server/usb/UsbPermissionManager;
.super Ljava/lang/Object;
.source "UsbPermissionManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private final mLock:Ljava/lang/Object;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbPermissionManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/android/server/usb/UsbPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mDisablePermissionDialogs:Z

    .line 68
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 14
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 212
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v3, 0x20500000002L

    const-wide v5, 0x10900000001L

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, "deviceName":Ljava/lang/String;
    const-string v7, "device_permissions"

    const-wide v8, 0x20b00000002L

    invoke-virtual {p1, v7, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 217
    .local v7, "devicePermissionToken":J
    const-string v9, "device_name"

    invoke-virtual {p1, v9, v5, v6, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 220
    .local v5, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 221
    .local v6, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_0

    .line 222
    const-string/jumbo v10, "uids"

    invoke-virtual {v5, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {p1, v10, v3, v4, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 221
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 225
    .end local v9    # "i":I
    :cond_0
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 226
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v5    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v6    # "count":I
    .end local v7    # "devicePermissionToken":J
    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 229
    .local v2, "accessory":Landroid/hardware/usb/UsbAccessory;
    const-string v7, "accessory_permissions"

    const-wide v8, 0x20b00000003L

    invoke-virtual {p1, v7, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 232
    .local v7, "accessoryPermissionToken":J
    const-string v9, "accessory_description"

    .line 234
    invoke-virtual {v2}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v10

    .line 232
    invoke-virtual {p1, v9, v5, v6, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 236
    iget-object v9, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseBooleanArray;

    .line 237
    .local v9, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    .line 238
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_2

    .line 239
    const-string/jumbo v12, "uids"

    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    invoke-virtual {p1, v12, v3, v4, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 238
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 242
    .end local v11    # "i":I
    :cond_2
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 243
    .end local v2    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v7    # "accessoryPermissionToken":J
    .end local v9    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v10    # "count":I
    goto :goto_2

    .line 244
    :cond_3
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 117
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 119
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 120
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v3

    .line 121
    iget-object v3, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 124
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 99
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 102
    .local v2, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 103
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v2, v4

    .line 104
    iget-object v4, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 107
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 155
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 160
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_1

    .line 161
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 163
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 157
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_2
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 140
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_1

    .line 141
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 143
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 137
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_2
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 87
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "canBeDefault"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "userContext"    # Landroid/content/Context;
    .param p7, "pi"    # Landroid/app/PendingIntent;

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    .local v0, "identity":J
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 190
    const-string v3, "device"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 192
    :cond_0
    const-string v3, "accessory"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    :goto_0
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v3, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string v3, "android.hardware.usb.extra.PACKAGE"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    goto :goto_2

    .line 207
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    sget-object v4, Lcom/android/server/usb/UsbPermissionManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "unable to start UsbPermissionActivity"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    nop

    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_1

    .line 209
    :goto_2
    return-void

    .line 207
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
