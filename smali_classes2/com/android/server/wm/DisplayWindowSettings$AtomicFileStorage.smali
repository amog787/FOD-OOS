.class Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"

# interfaces
.implements Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtomicFileStorage"
.end annotation


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 657
    .local v0, "folder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "display_settings.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 660
    .local v1, "settingsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->copyVendorSettings(Ljava/io/File;)V

    .line 663
    :cond_0
    new-instance v2, Landroid/util/AtomicFile;

    const-string v3, "wm-displays"

    invoke-direct {v2, v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    .line 664
    return-void
.end method

.method private static copyVendorSettings(Ljava/io/File;)V
    .locals 4
    .param p0, "target"    # Ljava/io/File;

    .line 667
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/display_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 669
    .local v0, "vendorFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    :try_start_0
    invoke-static {v0, p0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    goto :goto_0

    .line 672
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "Failed to copy vendor display_settings.xml"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public finishWrite(Ljava/io/OutputStream;Z)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "success"    # Z

    .line 690
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 693
    move-object v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    .line 694
    .local v0, "fos":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    .line 695
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 699
    :goto_0
    return-void

    .line 691
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected OutputStream as argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openRead()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public startWrite()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
