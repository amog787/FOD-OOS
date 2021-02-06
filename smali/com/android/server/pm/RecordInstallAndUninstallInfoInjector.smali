.class public Lcom/android/server/pm/RecordInstallAndUninstallInfoInjector;
.super Ljava/lang/Object;
.source "RecordInstallAndUninstallInfoInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/android/server/pm/RecordInstallAndUninstallInfoInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/RecordInstallAndUninstallInfoInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recordInstallFailInfo(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 73
    iget v0, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_3
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_4

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_4
    const-string/jumbo v1, "opdiagnose"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/OPDiagnoseManager;

    .line 92
    .local v1, "diagnoseManager":Landroid/os/OPDiagnoseManager;
    if-eqz v1, :cond_5

    .line 93
    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_APK_INSTALL_FAIL:I

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/os/OPDiagnoseManager;->writeDiagData(ILjava/lang/String;)Z

    .line 95
    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_APK_INSTALL_FAIL:I

    invoke-virtual {v1, v2}, Landroid/os/OPDiagnoseManager;->saveDiagLog(I)Z

    .line 97
    :cond_5
    return-void
.end method

.method public static recordInstallInfo(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentRes"    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .param p2, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 43
    iget v0, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->installerPackageName:Ljava/lang/String;

    .line 45
    const-string v3, "com.android.packageinstaller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 47
    .local v0, "isNeedRecord":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 48
    const-string v3, ""

    .line 49
    .local v3, "src":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v4, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v1

    .line 52
    .local v10, "update":Z
    :goto_1
    iget v1, p2, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 53
    const-string v3, "adb install"

    goto :goto_2

    .line 56
    :cond_2
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 57
    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->installerPackageName:Ljava/lang/String;

    .line 61
    :cond_3
    :goto_2
    :try_start_0
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v5

    .line 62
    .local v5, "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    nop

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 64
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v9

    .line 62
    move-object v6, p0

    move-object v11, v3

    invoke-virtual/range {v5 .. v11}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveInstallInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v5    # "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    goto :goto_3

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/pm/RecordInstallAndUninstallInfoInjector;->TAG:Ljava/lang/String;

    const-string v4, "error while install package"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "src":Ljava/lang/String;
    .end local v10    # "update":Z
    :cond_4
    :goto_3
    return-void
.end method

.method public static recordUninstallInfo(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "returnCode"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionName"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_1

    .line 35
    :cond_0
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    .line 36
    .local v0, "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p3, p4}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveUninstallInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v0    # "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    :cond_1
    return-void
.end method
