.class final Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;
.super Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileSystemConnector"
.end annotation


# instance fields
.field final mAddedFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstallationFileParcel;",
            ">;)V"
        }
    .end annotation

    .line 1245
    .local p2, "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;-><init>()V

    .line 1243
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    .line 1246
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstallationFileParcel;

    .line 1247
    .local v0, "file":Landroid/content/pm/InstallationFileParcel;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    iget-object v2, v0, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1248
    .end local v0    # "file":Landroid/content/pm/InstallationFileParcel;
    goto :goto_0

    .line 1249
    :cond_0
    return-void
.end method


# virtual methods
.method public writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "incomingFd"    # Landroid/os/ParcelFileDescriptor;

    .line 1254
    if-eqz p6, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->access$700(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    nop

    .line 1265
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1258
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "File name is not in the list of added files."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incomingFd can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
