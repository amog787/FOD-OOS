.class Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageWriteQueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<",
        "Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;",
        ">;"
    }
.end annotation


# instance fields
.field final mFilePath:Ljava/lang/String;

.field mImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 596
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 597
    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .locals 0

    .line 589
    check-cast p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->matches(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z

    move-result p1

    return p1
.end method

.method public matches(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public process()V
    .locals 7

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 602
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wm/TaskPersister;->access$100(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TaskPersister"

    if-nez v1, :cond_0

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while creating images directory for file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 608
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 610
    .local v3, "imageFile":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 611
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    nop

    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 616
    goto :goto_1

    .line 615
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 612
    :catch_0
    move-exception v4

    .line 613
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveImage: unable to save "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 617
    :goto_1
    return-void

    .line 615
    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 616
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageWriteQueueItem{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 632
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    return-object v0
.end method

.method public bridge synthetic updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .locals 0

    .line 589
    check-cast p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->updateFrom(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)V

    return-void
.end method

.method public updateFrom(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 626
    iget-object v0, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 627
    return-void
.end method
