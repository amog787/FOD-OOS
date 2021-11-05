.class public Lcom/android/server/pm/dex/ViewCompiler;
.super Ljava/lang/Object;
.source "ViewCompiler.java"


# instance fields
.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/pm/Installer;)V
    .locals 0
    .param p1, "installLock"    # Ljava/lang/Object;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstallLock:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstaller:Lcom/android/server/pm/Installer;

    .line 38
    return-void
.end method


# virtual methods
.method public compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 42
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "apkPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v2

    .line 46
    .local v2, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/code_cache/compiled_view.dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "outDexFile":Ljava/lang/String;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compiling layouts in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 51
    .local v4, "callingId":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstaller:Lcom/android/server/pm/Installer;

    .line 53
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v8

    .line 52
    invoke-virtual {v7, v1, v0, v3, v8}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 52
    return v7

    .line 54
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "dataDir":Ljava/io/File;
    .end local v3    # "outDexFile":Ljava/lang/String;
    .end local v4    # "callingId":J
    .end local p0    # "this":Lcom/android/server/pm/dex/ViewCompiler;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "apkPath":Ljava/lang/String;
    .restart local v2    # "dataDir":Ljava/io/File;
    .restart local v3    # "outDexFile":Ljava/lang/String;
    .restart local v4    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ViewCompiler;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    nop

    .end local p0    # "this":Lcom/android/server/pm/dex/ViewCompiler;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 58
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "dataDir":Ljava/io/File;
    .end local v3    # "outDexFile":Ljava/lang/String;
    .end local v4    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ViewCompiler;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PackageManager"

    const-string v2, "Failed to compile layouts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v1, 0x0

    return v1
.end method
