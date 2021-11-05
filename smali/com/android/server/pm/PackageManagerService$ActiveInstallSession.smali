.class Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveInstallSession"
.end annotation


# instance fields
.field private final mInstallSource:Lcom/android/server/pm/InstallSource;

.field private final mInstallerUid:I

.field private final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field private final mPackageName:Ljava/lang/String;

.field private final mSessionId:I

.field private final mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field private final mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private final mStagedDir:Ljava/io/File;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;ILandroid/content/pm/PackageInstaller$SessionParams;ILcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stagedDir"    # Ljava/io/File;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "sessionId"    # I
    .param p5, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p6, "installerUid"    # I
    .param p7, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 26397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26398
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    .line 26399
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    .line 26400
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 26401
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionId:I

    .line 26402
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 26403
    iput p6, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    .line 26404
    invoke-static {p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 26405
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    .line 26406
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 26407
    return-void
.end method


# virtual methods
.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 1

    .line 26435
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    return-object v0
.end method

.method public getInstallerUid()I
    .locals 1

    .line 26430
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    return v0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .locals 1

    .line 26418
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 26410
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .line 26422
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionId:I

    return v0
.end method

.method public getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 1

    .line 26426
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .locals 1

    .line 26443
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method public getStagedDir()Ljava/io/File;
    .locals 1

    .line 26414
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 26439
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method
