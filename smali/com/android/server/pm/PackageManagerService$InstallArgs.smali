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

.field final installFlags:I

.field final installGrantPermissions:[Ljava/lang/String;

.field final installReason:I

.field final installerPackageName:Ljava/lang/String;

.field instructionSets:[Ljava/lang/String;

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
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;ILcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;)V
    .locals 16
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "volumeUuid"    # Ljava/lang/String;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "abiOverride"    # Ljava/lang/String;
    .param p10, "installGrantPermissions"    # [Ljava/lang/String;
    .param p12, "traceMethod"    # Ljava/lang/String;
    .param p13, "traceCookie"    # I
    .param p14, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p15, "installReason"    # I
    .param p16, "multiPackageInstallParams"    # Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$OriginInfo;",
            "Lcom/android/server/pm/PackageManagerService$MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "I",
            "Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;",
            ")V"
        }
    .end annotation

    .line 16192
    .local p11, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16193
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16194
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16195
    move/from16 v3, p4

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    .line 16196
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16197
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    .line 16198
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->volumeUuid:Ljava/lang/String;

    .line 16199
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    .line 16200
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->instructionSets:[Ljava/lang/String;

    .line 16201
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    .line 16202
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 16203
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 16204
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    .line 16205
    move/from16 v13, p13

    iput v13, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    .line 16206
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 16207
    move/from16 v15, p15

    iput v15, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installReason:I

    .line 16208
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mMultiPackageInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    .line 16209
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

    .line 16245
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .locals 1

    .line 16236
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILandroid/content/pm/PackageParser$Package;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 1

    .line 16253
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isEphemeral()Z
    .locals 1

    .line 16249
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
