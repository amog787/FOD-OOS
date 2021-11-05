.class public Lcom/android/server/backup/utils/BackupManagerMonitorUtils;
.super Ljava/lang/Object;
.source "BackupManagerMonitorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;
    .locals 4
    .param p0, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p1, "id"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "category"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 55
    if-eqz p0, :cond_2

    .line 57
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v1, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    iget v2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    .line 66
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 68
    :cond_0
    if-eqz p4, :cond_1

    .line 69
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    :cond_1
    invoke-interface {p0, v0}, Landroid/app/backup/IBackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object p0

    .line 73
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "backup manager monitor went away"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 109
    if-nez p0, :cond_0

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 92
    if-nez p0, :cond_0

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 126
    if-nez p0, :cond_0

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    .line 129
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-object p0
.end method
