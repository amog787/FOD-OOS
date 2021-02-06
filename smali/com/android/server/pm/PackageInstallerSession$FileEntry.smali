.class Lcom/android/server/pm/PackageInstallerSession$FileEntry;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileEntry"
.end annotation


# instance fields
.field private final mFile:Landroid/content/pm/InstallationFile;

.field private final mIndex:I


# direct methods
.method constructor <init>(ILandroid/content/pm/InstallationFile;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "file"    # Landroid/content/pm/InstallationFile;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    .line 346
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 347
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 359
    instance-of v0, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 360
    return v1

    .line 362
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 363
    .local v0, "rhs":Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 364
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getFile()Landroid/content/pm/InstallationFile;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    return-object v0
.end method

.method getIndex()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 369
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v1}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v1}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
