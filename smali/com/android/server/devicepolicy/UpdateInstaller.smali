.class abstract Lcom/android/server/devicepolicy/UpdateInstaller;
.super Ljava/lang/Object;
.source "UpdateInstaller.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UpdateInstaller"


# instance fields
.field private mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

.field private mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field protected mContext:Landroid/content/Context;

.field protected mCopiedUpdateFile:Ljava/io/File;

.field private mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field private mUpdateFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/app/admin/StartInstallingUpdateCallback;
    .param p4, "injector"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
    .param p5, "constants"    # Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

    .line 58
    iput-object p2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mUpdateFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 59
    iput-object p4, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 60
    iput-object p5, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 61
    return-void
.end method

.method private calculateBatteryPercentage(Landroid/content/Intent;)F
    .locals 4
    .param p1, "batteryStatus"    # Landroid/content/Intent;

    .line 101
    const-string/jumbo v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "level":I
    const-string/jumbo v2, "scale"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private copyToFile(Ljava/io/File;)V
    .locals 4
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 132
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mUpdateFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 134
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v1    # "in":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 136
    .end local v0    # "out":Ljava/io/OutputStream;
    return-void

    .line 131
    .restart local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "out":Ljava/io/OutputStream;
    .end local p0    # "this":Lcom/android/server/devicepolicy/UpdateInstaller;
    .end local p1    # "destination":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/android/server/devicepolicy/UpdateInstaller;
    .restart local p1    # "destination":Ljava/io/File;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method private copyUpdateFileToDataOtaPackageDir()Ljava/io/File;
    .locals 3

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->createNewFileWithPermissions()Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "destination":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->copyToFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v0

    .line 111
    .end local v0    # "destination":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "UpdateInstaller"

    const-string v2, "Failed to copy update file to OTA directory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/4 v1, 0x1

    .line 115
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {p0, v1, v2}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    return-object v1
.end method

.method private createNewFileWithPermissions()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/ota_package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "update"

    const-string v2, ".zip"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 123
    .local v0, "destination":Ljava/io/File;
    const/16 v1, 0x1e4

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 127
    return-object v0
.end method

.method private isBatteryLevelSufficient()Z
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, "batteryStatus":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->calculateBatteryPercentage(Landroid/content/Intent;)F

    move-result v1

    .line 93
    .local v1, "batteryPercentage":F
    nop

    .line 94
    const-string/jumbo v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 95
    .local v2, "isBatteryPluggedIn":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 96
    iget-object v5, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    iget v5, v5, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_1

    .line 97
    :cond_2
    iget-object v5, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    iget v5, v5, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    .line 95
    :goto_1
    return v3
.end method


# virtual methods
.method cleanupUpdateFile()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    :cond_0
    return-void
.end method

.method public abstract installUpdateInThread()V
.end method

.method public synthetic lambda$startInstallUpdate$0$UpdateInstaller()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->copyUpdateFileToDataOtaPackageDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 77
    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    const-string v1, "Error while copying file."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->installUpdateInThread()V

    .line 84
    return-void
.end method

.method protected notifyCallbackOnError(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->cleanupUpdateFile()V

    .line 146
    nop

    .line 147
    const/16 v0, 0x4a

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/StartInstallingUpdateCallback;->onStartInstallingUpdateError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UpdateInstaller"

    const-string v2, "Error while calling callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected notifyCallbackOnSuccess()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->cleanupUpdateFile()V

    .line 159
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const-string v1, "deviceowner"

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->powerManagerReboot(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public startInstallUpdate()V
    .locals 3

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 67
    invoke-direct {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->isBatteryLevelSufficient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The battery level must be above "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    iget v2, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while not charging orabove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    iget v2, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while charging"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 73
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$UpdateInstaller$CxDofI1o0YOUvaV_mdNG4ke1uck;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/-$$Lambda$UpdateInstaller$CxDofI1o0YOUvaV_mdNG4ke1uck;-><init>(Lcom/android/server/devicepolicy/UpdateInstaller;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    .local v0, "thread":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method
