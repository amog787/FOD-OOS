.class Lcom/android/server/pm/PmInjector$2;
.super Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PmInjector;->doCopyApkTheme(Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/android/server/pm/PmInjector$2;->val$origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-direct {p0}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PmInjector$2;->val$origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Lcom/android/server/pm/PmInjector;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating theme package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 590
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 591
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 593
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->O_RDWR:I

    sget v4, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v3, v4

    const/16 v4, 0x1a4

    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 595
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 596
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 597
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
