.class Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsByProfileGroup:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsByProfileGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsByUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsByUser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usb/UsbUserSettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbSettingsManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 63
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 64
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 65
    new-instance v0, Lcom/android/server/usb/UsbHandlerManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbHandlerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    .line 66
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 10
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 146
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 148
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    monitor-enter v2

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 150
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 151
    .local v4, "numUsers":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 152
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "user_settings"

    const-wide v8, 0x20b00000001L

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/android/server/usb/UsbUserSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "numUsers":I
    .end local v5    # "i":I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    monitor-enter v3

    .line 158
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 159
    .local v2, "numProfileGroups":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 160
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    const-string/jumbo v6, "profile_group_settings"

    const-wide v7, 0x20b00000002L

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v2    # "numProfileGroups":I
    .end local v4    # "i":I
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 166
    return-void

    .line 163
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 155
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .locals 7
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 97
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 98
    .local v0, "parentUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .local v1, "parentUser":Landroid/os/UserHandle;
    goto :goto_0

    .line 101
    .end local v1    # "parentUser":Landroid/os/UserHandle;
    :cond_0
    move-object v1, p1

    .line 104
    .restart local v1    # "parentUser":Landroid/os/UserHandle;
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    monitor-enter v2

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 106
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 105
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 107
    .local v3, "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    if-nez v3, :cond_1

    .line 108
    new-instance v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    invoke-direct {v4, v5, v1, p0, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbHandlerManager;)V

    move-object v3, v4

    .line 110
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    :cond_1
    monitor-exit v2

    return-object v3

    .line 113
    .end local v3    # "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .locals 8
    .param p1, "userId"    # I

    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbUserSettingsManager;

    .line 78
    .local v1, "settings":Lcom/android/server/usb/UsbUserSettingsManager;
    if-nez v1, :cond_0

    .line 79
    new-instance v2, Lcom/android/server/usb/UsbUserSettingsManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    new-instance v5, Lcom/android/server/usb/UsbPermissionManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/usb/UsbPermissionManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/usb/UsbUserSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbPermissionManager;)V

    move-object v1, v2

    .line 81
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    :cond_0
    monitor-exit v0

    return-object v1

    .line 84
    .end local v1    # "settings":Lcom/android/server/usb/UsbUserSettingsManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method remove(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userToRemove"    # Landroid/os/UserHandle;

    .line 122
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    monitor-enter v1

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 135
    .local v0, "numProfileGroups":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeAllDefaultsForUser(Landroid/os/UserHandle;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "numProfileGroups":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 124
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 197
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 208
    return-void

    .line 202
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

    .line 174
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 189
    return-void

    .line 179
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
