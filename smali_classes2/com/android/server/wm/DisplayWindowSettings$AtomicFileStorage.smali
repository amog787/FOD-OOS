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

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 692
    .local v0, "folder":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "display_settings.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "wm-displays"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    .line 693
    return-void
.end method


# virtual methods
.method public finishWrite(Ljava/io/OutputStream;Z)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "success"    # Z

    .line 707
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 710
    move-object v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    .line 711
    .local v0, "fos":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 716
    :goto_0
    return-void

    .line 708
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

    .line 697
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

    .line 702
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
