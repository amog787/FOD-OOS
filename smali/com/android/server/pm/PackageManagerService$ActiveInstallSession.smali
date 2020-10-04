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
.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mInstallerUid:I

.field private final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field private final mPackageName:Ljava/lang/String;

.field private final mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field private final mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private final mStagedDir:Ljava/io/File;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stagedDir"    # Ljava/io/File;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "installerUid"    # I
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 26539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26540
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    .line 26541
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    .line 26542
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 26543
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 26544
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerPackageName:Ljava/lang/String;

    .line 26545
    iput p6, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    .line 26546
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    .line 26547
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 26548
    return-void
.end method


# virtual methods
.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 26567
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerUid()I
    .locals 1

    .line 26571
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    return v0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .locals 1

    .line 26559
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 26551
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 1

    .line 26563
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .locals 1

    .line 26579
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method public getStagedDir()Ljava/io/File;
    .locals 1

    .line 26555
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 26575
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method
