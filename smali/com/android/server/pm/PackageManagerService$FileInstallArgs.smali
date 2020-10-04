.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 18
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    .line 16290
    move-object/from16 v9, p0

    move-object/from16 v15, p1

    iput-object v15, v9, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16291
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16293
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceMethod:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceCookie:I

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object v15, v9

    iget v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    move/from16 v16, v9

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    move-object/from16 v17, v9

    .line 16291
    const/4 v9, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;ILcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;)V

    .line 16297
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "instructionSets"    # [Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    .line 16300
    move-object/from16 v11, p1

    iput-object v11, v15, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16301
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    sget-object v14, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/16 v16, 0x0

    move/from16 v13, v16

    move/from16 v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;ILcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;)V

    .line 16304
    const/4 v0, 0x0

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    move-object/from16 v3, p0

    iput-object v2, v3, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16305
    move-object/from16 v2, p3

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    iput-object v0, v3, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16306
    return-void
.end method

.method private cleanUp()Z
    .locals 4

    .line 16455
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16461
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0x16

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16462
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16463
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->cleanUp(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 16467
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 16469
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v2, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16470
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 16473
    :cond_2
    return v0

    .line 16456
    :cond_3
    :goto_0
    return v1
.end method

.method private doCopyApk()I
    .locals 6

    .line 16318
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v1, 0x1

    const-string v2, "PackageManager"

    if-eqz v0, :cond_2

    .line 16319
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already staged; skipping copy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16320
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16321
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16326
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-static {v0, v2}, Lcom/android/server/pm/PmInjector;->isPkgNeedToBeHandleThemeAndOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16327
    const/4 v0, 0x1

    .line 16328
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-static {v1, v0}, Lcom/android/server/pm/PmInjector;->doCopyApkTheme(Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I

    .line 16329
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-static {v1, v2, v0}, Lcom/android/server/pm/PmInjector;->doCheckOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I

    move-result v0

    .line 16330
    return v0

    .line 16333
    .end local v0    # "ret":I
    :cond_1
    return v1

    .line 16337
    :cond_2
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 16338
    .local v0, "isEphemeral":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->volumeUuid:Ljava/lang/String;

    .line 16339
    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 16340
    .local v3, "tempDir":Ljava/io/File;
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16341
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16345
    .end local v0    # "isEphemeral":Z
    .end local v3    # "tempDir":Ljava/io/File;
    nop

    .line 16347
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 16348
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16347
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    .line 16349
    .local v0, "ret":I
    if-eq v0, v1, :cond_4

    .line 16350
    const-string v1, "Failed to copy package"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16351
    return v0

    .line 16354
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const-string/jumbo v4, "lib"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16355
    .local v1, "libraryRoot":Ljava/io/File;
    const/4 v3, 0x0

    .line 16357
    .local v3, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v4

    move-object v3, v4

    .line 16358
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 16364
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 16365
    goto :goto_2

    .line 16364
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 16360
    :catch_0
    move-exception v4

    .line 16361
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "Copying native libraries failed"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16362
    const/16 v0, -0x6e

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 16371
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-static {v2, v4}, Lcom/android/server/pm/PmInjector;->isPkgNeedToBeHandleThemeAndOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16372
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-static {v2, v0}, Lcom/android/server/pm/PmInjector;->doCopyApkTheme(Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I

    .line 16373
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-static {v2, v4, v0}, Lcom/android/server/pm/PmInjector;->doCheckOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I

    move-result v0

    .line 16376
    :cond_5
    return v0

    .line 16364
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 16342
    .end local v0    # "ret":I
    .end local v1    # "libraryRoot":Ljava/io/File;
    .end local v3    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :catch_1
    move-exception v0

    .line 16343
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create copy file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16344
    const/4 v1, -0x4

    return v1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 5

    .line 16478
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16479
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 16482
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 16486
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0x16

    aput v4, v3, v2

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16487
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/android/server/pm/OpReserveAppInjector;->cleanUpResourcesLI(Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16492
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    goto :goto_0

    .line 16490
    :catch_0
    move-exception v1

    .line 16495
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16496
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    .line 16497
    return-void
.end method

.method copyApk()I
    .locals 3

    .line 16309
    const-wide/32 v0, 0x40000

    const-string v2, "copyApk"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16311
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApk()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16313
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 16311
    return v2

    .line 16313
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    .line 16501
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 16502
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .line 16438
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 16439
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16441
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    .line 16380
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 16381
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16383
    :cond_0
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;)Z
    .locals 8
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 16387
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 16388
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16389
    return v1

    .line 16392
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 16393
    .local v2, "targetDir":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16394
    .local v3, "beforeCodeFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 16396
    .local v4, "afterCodeFile":Ljava/io/File;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    const-string v6, "PackageManager"

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Renaming "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16398
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16402
    nop

    .line 16404
    invoke-static {v4}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 16405
    const-string v0, "Failed to restorecon"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16406
    return v1

    .line 16410
    :cond_2
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16411
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16415
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16419
    nop

    .line 16420
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 16422
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setSplitCodePaths([Ljava/lang/String;)V

    .line 16426
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 16427
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoCodePath(Ljava/lang/String;)V

    .line 16428
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseCodePath(Ljava/lang/String;)V

    .line 16429
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitCodePaths([Ljava/lang/String;)V

    .line 16430
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoResourcePath(Ljava/lang/String;)V

    .line 16431
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseResourcePath(Ljava/lang/String;)V

    .line 16432
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V

    .line 16434
    return v0

    .line 16416
    :catch_0
    move-exception v0

    .line 16417
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get path: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16418
    return v1

    .line 16399
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 16400
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v5, "Failed to rename"

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16401
    return v1
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .line 16446
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .line 16451
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
