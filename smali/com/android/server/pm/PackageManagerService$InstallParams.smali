.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final autoRevokePermissionsMode:I

.field final forceQueryableOverride:Z

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installSource:Lcom/android/server/pm/InstallSource;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final mDataLoaderType:I

.field private mEnableRollbackCompleted:Z

.field private mIntegrityVerificationCompleted:Z

.field mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

.field mRet:I

.field final mSessionId:I

.field private mVerificationCompleted:Z

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final requiredInstalledVersionCode:J

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;

.field final whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "activeInstallSession"    # Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    .line 15303
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15304
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15305
    nop

    .line 15306
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    .line 15307
    .local v0, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_0

    .line 15308
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    .line 15310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ephemeral install of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15313
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 15317
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15318
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getStagedDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15320
    nop

    .line 15321
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 15322
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 15320
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 15324
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15325
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15326
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    .line 15327
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15328
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15329
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15330
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 15331
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    .line 15332
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15333
    iget-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 15334
    iget-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    .line 15335
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v1, :cond_1

    .line 15336
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    .line 15337
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionId()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    .line 15338
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILandroid/content/pm/PackageParser$SigningDetails;IJI)V
    .locals 16
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p13, "autoRevokePermissionsMode"    # I
    .param p14, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p15, "installReason"    # I
    .param p16, "requiredInstalledVersionCode"    # J
    .param p18, "dataLoaderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$OriginInfo;",
            "Lcom/android/server/pm/PackageManagerService$MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Lcom/android/server/pm/InstallSource;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$VerificationInfo;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "IJI)V"
        }
    .end annotation

    .line 15282
    .local p12, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15283
    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15284
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15285
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15286
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15287
    move/from16 v6, p5

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15288
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/InstallSource;

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    .line 15289
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15290
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15291
    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15292
    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15293
    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 15294
    move/from16 v12, p13

    iput v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    .line 15295
    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15296
    move/from16 v14, p15

    iput v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 15297
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 15298
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    .line 15299
    move/from16 v15, p18

    iput v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    .line 15300
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    .line 15301
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 15248
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 10
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 15347
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 15348
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 15350
    .local v1, "installLocation":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 15353
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 15358
    .local v3, "installedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object v4, v3

    .line 15359
    .local v4, "dataOwnerPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v4, :cond_0

    .line 15360
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 15361
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_0

    .line 15362
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v4, v6

    .line 15366
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 15367
    const/4 v5, -0x8

    if-nez v4, :cond_1

    .line 15368
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required installed version code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " but package is not installed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15371
    monitor-exit v2

    return v5

    .line 15374
    :cond_1
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 15375
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required installed version code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " but actual installed version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15378
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 15375
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15379
    monitor-exit v2

    return v5

    .line 15383
    :cond_2
    if-eqz v4, :cond_3

    .line 15384
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15385
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v6

    .line 15384
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 15387
    :try_start_1
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15391
    goto :goto_0

    .line 15388
    :catch_0
    move-exception v5

    .line 15389
    .local v5, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_2
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrade detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15390
    const/4 v6, -0x7

    monitor-exit v2

    return v6

    .line 15395
    .end local v5    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_3
    :goto_0
    if-eqz v3, :cond_9

    .line 15396
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    .line 15398
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    .line 15399
    monitor-exit v2

    return v7

    .line 15402
    :cond_4
    if-ne v1, v7, :cond_5

    .line 15404
    monitor-exit v2

    return v7

    .line 15405
    :cond_5
    if-ne v1, v6, :cond_6

    goto :goto_1

    .line 15409
    :cond_6
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 15410
    monitor-exit v2

    return v6

    .line 15412
    :cond_7
    monitor-exit v2

    return v7

    .line 15417
    :cond_8
    const/4 v5, -0x4

    monitor-exit v2

    return v5

    .line 15420
    .end local v3    # "installedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "dataOwnerPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_9
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15421
    iget v2, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v2

    .line 15420
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method


# virtual methods
.method handleIntegrityVerificationFinished()V
    .locals 1

    .line 15915
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-nez v0, :cond_0

    .line 15916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    .line 15917
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-eqz v0, :cond_0

    .line 15918
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 15922
    :cond_0
    return-void
.end method

.method handleReturnCode()V
    .locals 7

    .line 15934
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    if-eqz v0, :cond_3

    .line 15936
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 15937
    const-string v0, ""

    .line 15938
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/parsing/result/ParseTypeImpl;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    invoke-direct {v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    .line 15946
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    const/4 v3, 0x0

    .line 15938
    invoke-static {v1, v2, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 15948
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$PackageLite;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    const-string v3, "PackageManager"

    if-eqz v2, :cond_0

    .line 15949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse package at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15950
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    .line 15949
    invoke-static {v3, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 15952
    :cond_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v0, v2, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 15955
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const-string v5, "Dry run"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v0, v4, v5, v6}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15958
    goto :goto_1

    .line 15956
    :catch_0
    move-exception v2

    .line 15957
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15959
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 15961
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$PackageLite;>;"
    :cond_1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 15962
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 15964
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 15966
    :cond_3
    return-void
.end method

.method handleRollbackEnabled()V
    .locals 1

    .line 15928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 15929
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 15930
    return-void
.end method

.method public handleStartCopy()V
    .locals 27

    .line 15431
    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 15434
    .local v0, "ret":I
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v2, :cond_1

    .line 15435
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 15436
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_0

    .line 15438
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15442
    :cond_1
    :goto_0
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 15443
    .local v2, "onInt":Z
    :goto_1
    iget v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 15444
    .local v5, "ephemeral":Z
    :goto_2
    const/4 v6, 0x0

    .line 15447
    .local v6, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v6

    .line 15453
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/server/pm/PmInjector;->isPkgForegroundOrHaveDependency(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 15454
    const/16 v0, -0x73

    move v7, v0

    goto :goto_3

    .line 15453
    :cond_4
    move v7, v0

    .line 15458
    .end local v0    # "ret":I
    .local v7, "ret":I
    :goto_3
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    const-string v8, "PackageManager"

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    .line 15459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgLite for install: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15466
    :cond_5
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v9, -0x6

    const/4 v10, -0x1

    if-nez v0, :cond_7

    iget v0, v6, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v10, :cond_7

    .line 15469
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v11

    .line 15470
    .local v11, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 15471
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 15470
    invoke-virtual {v11, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v12

    .line 15473
    .local v12, "lowThreshold":J
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 15475
    .local v14, "sizeBytes":J
    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-ltz v0, :cond_6

    .line 15477
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v17, 0x0

    add-long v18, v14, v12

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    .line 15478
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v3, v4, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15482
    .end local v6    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object v6, v0

    goto :goto_4

    .line 15480
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v6    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_0
    move-exception v0

    .line 15481
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "Failed to free cache"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15490
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_6
    :goto_4
    iget v0, v6, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v9, :cond_7

    .line 15492
    const/4 v3, -0x1

    iput v3, v6, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15498
    .end local v11    # "storage":Landroid/os/storage/StorageManager;
    .end local v12    # "lowThreshold":J
    .end local v14    # "sizeBytes":J
    :cond_7
    const/4 v3, 0x1

    if-ne v7, v3, :cond_13

    .line 15499
    iget v0, v6, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15500
    .local v0, "loc":I
    const/4 v3, -0x3

    if-ne v0, v3, :cond_8

    .line 15501
    const/16 v7, -0x13

    goto :goto_5

    .line 15502
    :cond_8
    const/4 v3, -0x4

    if-ne v0, v3, :cond_9

    .line 15503
    const/4 v7, -0x1

    goto :goto_5

    .line 15504
    :cond_9
    const/4 v3, -0x1

    if-ne v0, v3, :cond_a

    .line 15505
    const/4 v7, -0x4

    goto :goto_5

    .line 15506
    :cond_a
    const/4 v3, -0x2

    if-ne v0, v3, :cond_b

    .line 15507
    const/4 v7, -0x2

    goto :goto_5

    .line 15508
    :cond_b
    if-ne v0, v9, :cond_c

    .line 15509
    const/4 v7, -0x3

    goto :goto_5

    .line 15510
    :cond_c
    const/4 v3, -0x5

    if-ne v0, v3, :cond_d

    .line 15511
    const/16 v7, -0x14

    goto :goto_5

    .line 15514
    :cond_d
    invoke-direct {v1, v6}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v0

    .line 15515
    const/4 v3, -0x7

    if-ne v0, v3, :cond_e

    .line 15516
    const/16 v7, -0x19

    goto :goto_5

    .line 15517
    :cond_e
    const/4 v3, -0x8

    if-ne v0, v3, :cond_f

    .line 15518
    const/16 v7, -0x79

    goto :goto_5

    .line 15519
    :cond_f
    if-nez v2, :cond_13

    .line 15521
    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    .line 15523
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_5

    .line 15524
    :cond_10
    const/4 v3, 0x3

    if-ne v0, v3, :cond_12

    .line 15525
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_11

    .line 15526
    const-string v3, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v8, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15528
    :cond_11
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15529
    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_5

    .line 15533
    :cond_12
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15539
    .end local v0    # "loc":I
    :cond_13
    :goto_5
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    .line 15542
    .local v0, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    if-eqz v6, :cond_14

    .line 15543
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    iget-object v4, v6, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/OpCompatibilityInjector;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    .line 15547
    :cond_14
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    .line 15548
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    .line 15549
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 15550
    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 15552
    if-ne v7, v3, :cond_16

    .line 15553
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2708(Lcom/android/server/pm/PackageManagerService;)I

    move-result v3

    .line 15556
    .local v3, "verificationId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v4, :cond_15

    .line 15557
    new-instance v4, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v4, v1}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    .line 15559
    .local v4, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 15561
    invoke-virtual {v1, v3, v6, v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 15562
    invoke-virtual {v1, v3, v6, v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I

    move-result v7

    .line 15566
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 15567
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 15572
    .end local v4    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_15
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v8, 0x40000

    and-int/2addr v4, v8

    if-eqz v4, :cond_16

    .line 15574
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2808(Lcom/android/server/pm/PackageManagerService;)I

    move-result v4

    .line 15575
    .local v4, "enableRollbackToken":I
    const-wide/32 v8, 0x40000

    const-string v10, "enable_rollback"

    invoke-static {v8, v9, v10, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15577
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 15579
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15580
    .local v8, "enableRollbackIntent":Landroid/content/Intent;
    const-string v9, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15583
    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    const-string v10, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15586
    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 15587
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15594
    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15596
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v20, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    invoke-direct {v10, v1, v4}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v21, "android.permission.PACKAGE_ROLLBACK_AGENT"

    move-object/from16 v18, v9

    move-object/from16 v19, v8

    move-object/from16 v22, v10

    invoke-virtual/range {v18 .. v26}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 15617
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 15621
    .end local v3    # "verificationId":I
    .end local v4    # "enableRollbackToken":I
    .end local v8    # "enableRollbackIntent":Landroid/content/Intent;
    :cond_16
    iput v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 15622
    return-void
.end method

.method handleVerificationFinished()V
    .locals 1

    .line 15905
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-nez v0, :cond_0

    .line 15906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    .line 15907
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-eqz v0, :cond_0

    .line 15908
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 15912
    :cond_0
    return-void
.end method

.method public synthetic lambda$handleReturnCode$0$PackageManagerService$InstallParams(JLjava/lang/String;I)Z
    .locals 2
    .param p1, "changeId"    # J
    .param p3, "packageName1"    # Ljava/lang/String;
    .param p4, "targetSdkVersion"    # I

    .line 15941
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 15942
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 15943
    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 15944
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1
.end method

.method populateInstallerExtras(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 15873
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15876
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v0, :cond_3

    .line 15877
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 15878
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15881
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 15882
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15885
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v0, :cond_2

    .line 15886
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15889
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v0, :cond_3

    .line 15890
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15894
    :cond_3
    return-void
.end method

.method sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .locals 24
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 15631
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15633
    const/4 v3, 0x1

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 15635
    return-void

    .line 15638
    :cond_0
    move-object/from16 v4, p3

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15641
    .local v3, "integrityVerification":Landroid/content/Intent;
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15644
    const v5, 0x50000001

    .line 15647
    .local v5, "flags":I
    const v6, 0x50000001

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15649
    const-string v6, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15650
    iget-object v6, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v7, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15651
    iget v6, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v7, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15652
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v6

    const-string v8, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v3, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15653
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 15656
    const-string v6, "android"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15658
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15659
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalDeviceIdleController()Lcom/android/server/DeviceIdleInternal;

    move-result-object v17

    .line 15660
    .local v17, "idleController":Lcom/android/server/DeviceIdleInternal;
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v14

    .line 15662
    .local v14, "idleDuration":J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v11, 0x0

    const-string/jumbo v12, "integrity component"

    move-object/from16 v7, v17

    move-wide v9, v14

    invoke-interface/range {v7 .. v12}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V

    .line 15665
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v13

    .line 15666
    .local v13, "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v13, v14, v15}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 15668
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 15671
    invoke-virtual {v13}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    invoke-direct {v12, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 15668
    move-object v7, v3

    move-object/from16 v21, v13

    .end local v13    # "options":Landroid/app/BroadcastOptions;
    .local v21, "options":Landroid/app/BroadcastOptions;
    move-object/from16 v13, v16

    move-wide/from16 v22, v14

    .end local v14    # "idleDuration":J
    .local v22, "idleDuration":J
    move/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 15685
    const-wide/32 v6, 0x40000

    const-string/jumbo v8, "integrity_verification"

    invoke-static {v6, v7, v8, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15689
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    .line 15690
    return-void
.end method

.method sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I
    .locals 38
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 15700
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    .line 15704
    .local v4, "ret":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 15705
    .local v5, "verifierUser":Landroid/os/UserHandle;
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v5, v6, :cond_0

    .line 15706
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 15713
    :cond_0
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/4 v7, -0x1

    const/high16 v8, 0x10000000

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_0

    .line 15714
    :cond_1
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 15715
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 15714
    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    :goto_0
    move v15, v6

    .line 15716
    .local v15, "requiredUid":I
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageVerificationState;->setRequiredVerifierUid(I)V

    .line 15717
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-nez v6, :cond_2

    move v6, v7

    goto :goto_1

    .line 15718
    :cond_2
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 15719
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 15718
    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    :goto_1
    move v14, v6

    .line 15721
    .local v14, "optionalUid":I
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    iget v7, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_2
    move v13, v7

    .line 15722
    .local v13, "installerUid":I
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15723
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iget v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15722
    invoke-static {v6, v2, v7, v9, v13}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;III)Z

    move-result v17

    .line 15724
    .local v17, "isVerificationEnabled":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    const/4 v7, 0x4

    const/4 v9, 0x1

    if-ne v6, v7, :cond_4

    move v6, v9

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    move/from16 v18, v6

    .line 15726
    .local v18, "isV4Signed":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move v6, v9

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    move/from16 v19, v6

    .line 15730
    .local v19, "isIncrementalInstall":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v6, :cond_f

    if-eqz v17, :cond_f

    if-eqz v19, :cond_7

    if-nez v18, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v20, v4

    move/from16 v29, v13

    move/from16 v36, v14

    move/from16 v37, v15

    goto/16 :goto_b

    .line 15733
    :cond_7
    :goto_5
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    .line 15735
    .local v11, "verification":Landroid/content/Intent;
    invoke-virtual {v11, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15736
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15738
    invoke-virtual {v11, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15741
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v23, 0x0

    .line 15742
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    const/16 v25, 0x0

    .line 15741
    const-string v22, "application/vnd.android.package-archive"

    move-object/from16 v20, v6

    move-object/from16 v21, v11

    invoke-static/range {v20 .. v25}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v10

    .line 15745
    .local v10, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    const-string v7, "PackageManager"

    if-eqz v6, :cond_8

    .line 15746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " verifiers for intent "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15747
    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " optional verifiers"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 15746
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15751
    :cond_8
    const-string v6, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v11, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15753
    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const-string v8, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v11, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15756
    iget-object v6, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v8, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v11, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15759
    iget v6, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v8, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v11, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15762
    nop

    .line 15764
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v8

    .line 15762
    const-string v6, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v11, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15766
    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageManagerService$InstallParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 15768
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v2, v10, v3}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v9

    .line 15771
    .local v9, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15772
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalDeviceIdleController()Lcom/android/server/DeviceIdleInternal;

    move-result-object v28

    .line 15773
    .local v28, "idleController":Lcom/android/server/DeviceIdleInternal;
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v16, v13

    .end local v13    # "installerUid":I
    .local v16, "installerUid":I
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v12

    .line 15774
    .local v12, "idleDuration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v8

    .line 15775
    .local v8, "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v8, v12, v13}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 15781
    if-eqz v9, :cond_b

    .line 15782
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 15783
    .local v6, "n":I
    if-nez v6, :cond_9

    .line 15784
    const-string v2, "Additional verifiers required, but none installed."

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15785
    const/16 v2, -0x16

    move v4, v2

    move-object/from16 v23, v9

    .end local v4    # "ret":I
    .local v2, "ret":I
    goto :goto_8

    .line 15787
    .end local v2    # "ret":I
    .restart local v4    # "ret":I
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v6, :cond_a

    .line 15788
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 15789
    .local v7, "verifierComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    .line 15790
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 15791
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    const/16 v26, 0x0

    .line 15789
    const-string/jumbo v27, "package verifier"

    move-object/from16 v20, v28

    move-wide/from16 v23, v12

    invoke-interface/range {v20 .. v27}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 15793
    move/from16 v20, v4

    .end local v4    # "ret":I
    .local v20, "ret":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 15794
    .local v4, "sufficientIntent":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15795
    move/from16 v21, v6

    .end local v6    # "n":I
    .local v21, "n":I
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v7

    .end local v7    # "verifierComponent":Landroid/content/ComponentName;
    .local v22, "verifierComponent":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 15797
    move-object/from16 v23, v9

    .end local v9    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v23, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 15795
    invoke-virtual {v6, v4, v5, v7, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15787
    .end local v4    # "sufficientIntent":Landroid/content/Intent;
    .end local v22    # "verifierComponent":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v20

    move/from16 v6, v21

    move-object/from16 v9, v23

    goto :goto_6

    .end local v20    # "ret":I
    .end local v21    # "n":I
    .end local v23    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v4, "ret":I
    .restart local v6    # "n":I
    .restart local v9    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_a
    move/from16 v20, v4

    move/from16 v21, v6

    move-object/from16 v23, v9

    .end local v4    # "ret":I
    .end local v6    # "n":I
    .end local v9    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v20    # "ret":I
    .restart local v21    # "n":I
    .restart local v23    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_7

    .line 15781
    .end local v2    # "i":I
    .end local v20    # "ret":I
    .end local v21    # "n":I
    .end local v23    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v4    # "ret":I
    .restart local v9    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_b
    move/from16 v20, v4

    move-object/from16 v23, v9

    .line 15802
    .end local v4    # "ret":I
    .end local v9    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v20    # "ret":I
    .restart local v23    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_7
    move/from16 v4, v20

    .end local v20    # "ret":I
    .restart local v4    # "ret":I
    :goto_8
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 15803
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 15804
    .local v2, "optionalIntent":Landroid/content/Intent;
    const-string v6, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15805
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v33, 0x0

    .line 15806
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v34

    const/16 v35, 0x0

    .line 15805
    const-string v32, "application/vnd.android.package-archive"

    move-object/from16 v30, v6

    move-object/from16 v31, v2

    invoke-static/range {v30 .. v35}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v9

    .line 15807
    .local v9, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v7

    .line 15809
    .local v7, "optionalVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15810
    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageVerificationState;->addOptionalVerifier(I)V

    .line 15811
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 15812
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v30, v4

    .end local v4    # "ret":I
    .local v30, "ret":I
    const-string v4, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v6, v2, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v31, v8

    move-object v4, v11

    move-wide/from16 v34, v12

    move/from16 v36, v14

    move/from16 v33, v15

    move/from16 v29, v16

    move-object/from16 v32, v23

    const/4 v14, 0x0

    move-object v15, v10

    goto :goto_9

    .line 15814
    .end local v30    # "ret":I
    .restart local v4    # "ret":I
    :cond_c
    move/from16 v30, v4

    .end local v4    # "ret":I
    .restart local v30    # "ret":I
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$InstallParams$3;

    invoke-direct {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$3;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v25, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v26, v7

    .end local v7    # "optionalVerifierComponent":Landroid/content/ComponentName;
    .local v26, "optionalVerifierComponent":Landroid/content/ComponentName;
    move-object v7, v2

    move-object/from16 v31, v8

    .end local v8    # "options":Landroid/app/BroadcastOptions;
    .local v31, "options":Landroid/app/BroadcastOptions;
    move-object v8, v5

    move-object/from16 v32, v23

    move-object/from16 v23, v9

    .end local v9    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v23, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v32, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v9, v25

    move/from16 v33, v15

    move-object v15, v10

    .end local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v15, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v33, "requiredUid":I
    move-object v10, v4

    move-object v4, v11

    .end local v11    # "verification":Landroid/content/Intent;
    .local v4, "verification":Landroid/content/Intent;
    move-object/from16 v11, v20

    move-wide/from16 v34, v12

    const/4 v13, 0x0

    .end local v12    # "idleDuration":J
    .local v34, "idleDuration":J
    move/from16 v12, v21

    move/from16 v29, v16

    .end local v16    # "installerUid":I
    .local v29, "installerUid":I
    move-object/from16 v13, v22

    move/from16 v36, v14

    .end local v14    # "optionalUid":I
    .local v36, "optionalUid":I
    move-object/from16 v14, v24

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 15827
    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    goto :goto_9

    .line 15802
    .end local v2    # "optionalIntent":Landroid/content/Intent;
    .end local v26    # "optionalVerifierComponent":Landroid/content/ComponentName;
    .end local v29    # "installerUid":I
    .end local v30    # "ret":I
    .end local v31    # "options":Landroid/app/BroadcastOptions;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "requiredUid":I
    .end local v34    # "idleDuration":J
    .end local v36    # "optionalUid":I
    .local v4, "ret":I
    .restart local v8    # "options":Landroid/app/BroadcastOptions;
    .restart local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "verification":Landroid/content/Intent;
    .restart local v12    # "idleDuration":J
    .restart local v14    # "optionalUid":I
    .local v15, "requiredUid":I
    .restart local v16    # "installerUid":I
    .local v23, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_d
    move/from16 v30, v4

    move-object/from16 v31, v8

    move-object v4, v11

    move-wide/from16 v34, v12

    move/from16 v36, v14

    move/from16 v33, v15

    move/from16 v29, v16

    move-object/from16 v32, v23

    const/4 v14, 0x0

    move-object v15, v10

    .line 15830
    .end local v8    # "options":Landroid/app/BroadcastOptions;
    .end local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "verification":Landroid/content/Intent;
    .end local v12    # "idleDuration":J
    .end local v14    # "optionalUid":I
    .end local v16    # "installerUid":I
    .end local v23    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v4, "verification":Landroid/content/Intent;
    .local v15, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v29    # "installerUid":I
    .restart local v30    # "ret":I
    .restart local v31    # "options":Landroid/app/BroadcastOptions;
    .restart local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v33    # "requiredUid":I
    .restart local v34    # "idleDuration":J
    .restart local v36    # "optionalUid":I
    :goto_9
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 15836
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v2, v6, v15}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 15838
    .local v2, "requiredVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15839
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 15841
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    const/16 v26, 0x0

    .line 15839
    const-string/jumbo v27, "package verifier"

    move-object/from16 v20, v28

    move-object/from16 v22, v6

    move-wide/from16 v23, v34

    invoke-interface/range {v20 .. v27}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 15842
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    .line 15845
    invoke-virtual/range {v31 .. v31}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$4;

    invoke-direct {v12, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$4;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 15842
    const-string v9, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v7, v4

    move-object v8, v5

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v37, v33

    .end local v15    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v33    # "requiredUid":I
    .local v22, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v37, "requiredUid":I
    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 15856
    const-wide/32 v6, 0x40000

    const-string/jumbo v8, "verification"

    invoke-static {v6, v7, v8, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15863
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    goto :goto_a

    .line 15830
    .end local v2    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v22    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v37    # "requiredUid":I
    .restart local v15    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v33    # "requiredUid":I
    :cond_e
    move-object/from16 v22, v15

    move/from16 v37, v33

    .line 15865
    .end local v4    # "verification":Landroid/content/Intent;
    .end local v15    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v28    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v31    # "options":Landroid/app/BroadcastOptions;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "requiredUid":I
    .end local v34    # "idleDuration":J
    .restart local v37    # "requiredUid":I
    :goto_a
    move/from16 v4, v30

    move/from16 v2, v37

    goto :goto_c

    .line 15730
    .end local v29    # "installerUid":I
    .end local v30    # "ret":I
    .end local v36    # "optionalUid":I
    .end local v37    # "requiredUid":I
    .local v4, "ret":I
    .restart local v13    # "installerUid":I
    .restart local v14    # "optionalUid":I
    .local v15, "requiredUid":I
    :cond_f
    move/from16 v20, v4

    move/from16 v29, v13

    move/from16 v36, v14

    move/from16 v37, v15

    .line 15866
    .end local v4    # "ret":I
    .end local v13    # "installerUid":I
    .end local v14    # "optionalUid":I
    .end local v15    # "requiredUid":I
    .restart local v20    # "ret":I
    .restart local v29    # "installerUid":I
    .restart local v36    # "optionalUid":I
    .restart local v37    # "requiredUid":I
    :goto_b
    move/from16 v2, v37

    .end local v37    # "requiredUid":I
    .local v2, "requiredUid":I
    invoke-virtual {v3, v2, v9}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move/from16 v4, v20

    .line 15869
    .end local v20    # "ret":I
    .restart local v4    # "ret":I
    :goto_c
    return v4
.end method

.method setReturnCode(I)V
    .locals 2
    .param p1, "ret"    # I

    .line 15897
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15900
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 15902
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
