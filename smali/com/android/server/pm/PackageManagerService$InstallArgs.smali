.class abstract Lcom/android/server/pm/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InstallArgs"
.end annotation


# instance fields
.field abiOverride:Ljava/lang/String;

.field final autoRevokePermissionsMode:I

.field final forceQueryableOverride:Z

.field final installFlags:I

.field final installGrantPermissions:[Ljava/lang/String;

.field final installReason:I

.field final installSource:Lcom/android/server/pm/InstallSource;

.field instructionSets:[Ljava/lang/String;

.field final mDataLoaderType:I

.field final mMultiPackageInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final traceCookie:I

.field final traceMethod:Ljava/lang/String;

.field final user:Landroid/os/UserHandle;

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
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 21
    .param p1, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 16048
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16050
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iget v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceMethod:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceCookie:I

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object/from16 v16, v9

    iget v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    move/from16 v17, v9

    iget-boolean v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    move/from16 v18, v9

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    move-object/from16 v19, v9

    iget v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    move/from16 v20, v9

    .line 16048
    const/4 v9, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;IZLcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;I)V

    .line 16056
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;IZLcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;I)V
    .locals 16
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p6, "volumeUuid"    # Ljava/lang/String;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "abiOverride"    # Ljava/lang/String;
    .param p10, "installGrantPermissions"    # [Ljava/lang/String;
    .param p12, "autoRevokePermissionsMode"    # I
    .param p13, "traceMethod"    # Ljava/lang/String;
    .param p14, "traceCookie"    # I
    .param p15, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p16, "installReason"    # I
    .param p17, "forceQueryableOverride"    # Z
    .param p18, "multiPackageInstallParams"    # Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;
    .param p19, "dataLoaderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$OriginInfo;",
            "Lcom/android/server/pm/PackageManagerService$MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Lcom/android/server/pm/InstallSource;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "IZ",
            "Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;",
            "I)V"
        }
    .end annotation

    .line 16024
    .local p11, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16025
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16026
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16027
    move/from16 v3, p4

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    .line 16028
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16029
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallSource;

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installSource:Lcom/android/server/pm/InstallSource;

    .line 16030
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->volumeUuid:Ljava/lang/String;

    .line 16031
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    .line 16032
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->instructionSets:[Ljava/lang/String;

    .line 16033
    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    .line 16034
    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 16035
    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 16036
    move/from16 v11, p12

    iput v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->autoRevokePermissionsMode:I

    .line 16037
    move-object/from16 v12, p13

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    .line 16038
    move/from16 v13, p14

    iput v13, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    .line 16039
    move-object/from16 v14, p15

    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 16040
    move/from16 v15, p16

    iput v15, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installReason:I

    .line 16041
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->forceQueryableOverride:Z

    .line 16042
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mMultiPackageInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    .line 16043
    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    .line 16044
    return-void
.end method


# virtual methods
.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk()I
.end method

.method doPostCopy(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 16092
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .locals 1

    .line 16083
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 1

    .line 16100
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isEphemeral()Z
    .locals 1

    .line 16096
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
