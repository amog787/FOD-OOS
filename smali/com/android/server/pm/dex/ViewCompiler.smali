.class public Lcom/android/server/pm/dex/ViewCompiler;
.super Ljava/lang/Object;
.source "ViewCompiler.java"


# instance fields
.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/pm/Installer;)V
    .locals 0
    .param p1, "installLock"    # Ljava/lang/Object;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstallLock:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstaller:Lcom/android/server/pm/Installer;

    .line 34
    return-void
.end method


# virtual methods
.method public compileLayouts(Landroid/content/pm/PackageParser$Package;)Z
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 38
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 39
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 40
    .local v1, "apkPath":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/code_cache/compiled_view.dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
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

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    .local v4, "callingId":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstaller:Lcom/android/server/pm/Installer;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v1, v0, v3, v8}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 47
    return v7

    .line 49
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "outDexFile":Ljava/lang/String;
    .end local v4    # "callingId":J
    .end local p0    # "this":Lcom/android/server/pm/dex/ViewCompiler;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 51
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "apkPath":Ljava/lang/String;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "outDexFile":Ljava/lang/String;
    .restart local v4    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ViewCompiler;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/pm/dex/ViewCompiler;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 53
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "outDexFile":Ljava/lang/String;
    .end local v4    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ViewCompiler;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_2
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PackageManager"

    const-string v2, "Failed to compile layouts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v1, 0x0

    return v1
.end method
