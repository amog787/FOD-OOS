.class Lcom/android/server/usb/UsbSerialReader;
.super Landroid/hardware/usb/IUsbSerialReader$Stub;
.source "UsbSerialReader.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDevice:Ljava/lang/Object;

.field private final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field private final mSerialNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissionManager"    # Lcom/android/server/usb/UsbPermissionManager;
    .param p3, "serialNumber"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Landroid/hardware/usb/IUsbSerialReader$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 58
    iput-object p3, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private enforcePackageBelongsToUid(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does to belong to the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 73
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 75
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    .line 76
    invoke-direct {p0, v1, p1}, Lcom/android/server/usb/UsbSerialReader;->enforcePackageBelongsToUid(ILjava/lang/String;)V

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 80
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 84
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    .line 85
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 89
    :try_start_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 91
    .local v6, "packageTargetSdkVersion":I
    const/16 v7, 0x1d

    if-lt v6, v7, :cond_1

    .line 92
    iget-object v7, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_USB"

    invoke-virtual {v7, v8, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 95
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 96
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    instance-of v8, v8, Landroid/hardware/usb/UsbDevice;

    if-eqz v8, :cond_0

    .line 97
    iget-object v8, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v8, v7}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/usb/UsbDevice;

    .line 98
    invoke-virtual {v8, v9, p1, v0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v8, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v8, v7}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/usb/UsbAccessory;

    .line 101
    invoke-virtual {v8, v9, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v7    # "userId":I
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    goto :goto_2

    .line 106
    .end local v6    # "packageTargetSdkVersion":I
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 86
    :catch_0
    move-exception v5

    .line 87
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v6, Landroid/os/RemoteException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cannot be found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/usb/UsbSerialReader;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "user":Landroid/os/UserHandle;
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/usb/UsbSerialReader;
    .restart local p1    # "packageName":Ljava/lang/String;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    throw v5

    .line 110
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "token":J
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    return-object v2
.end method

.method public setDevice(Ljava/lang/Object;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    .line 68
    return-void
.end method
