.class Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreWriteQueueItem"
.end annotation


# instance fields
.field private final mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mTaskId:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 1
    .param p2, "taskId"    # I
    .param p3, "userId"    # I
    .param p4, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 302
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$1;)V

    .line 303
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    .line 304
    iput p3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    .line 305
    iput-object p4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    .line 297
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    return v0
.end method


# virtual methods
.method onDequeuedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method onQueuedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method write()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$700(Lcom/android/server/wm/TaskSnapshotPersister;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create snapshot directory for user dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    .line 324
    invoke-static {v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$800(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 327
    .local v0, "failed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeProto()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    const/4 v0, 0x1

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeBuffer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    const/4 v0, 0x1

    .line 333
    :cond_2
    if-eqz v0, :cond_3

    .line 334
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$900(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    .line 336
    :cond_3
    return-void
.end method

.method writeBuffer()Z
    .locals 8

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 371
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 370
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 373
    const-string v3, "Invalid task snapshot hw bitmap"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v2

    .line 377
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 408
    .local v3, "swBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v4

    .line 410
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 411
    .local v5, "fos":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5f

    invoke-virtual {v3, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 412
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 417
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    const/4 v1, 0x1

    return v1

    .line 413
    :catch_0
    move-exception v5

    .line 414
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for persisting."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    return v2
.end method

.method writeProto()Z
    .locals 8

    .line 339
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    .line 340
    .local v0, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 341
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    .line 343
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 345
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->isRealSnapshot()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 346
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSystemUiVisibility()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    .line 348
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->isTranslucent()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 349
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->scale:F

    .line 351
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 352
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v2

    .line 353
    .local v2, "file":Ljava/io/File;
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v3, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 354
    .local v3, "atomicFile":Lcom/android/internal/os/AtomicFile;
    const/4 v4, 0x0

    .line 356
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 357
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 358
    invoke-virtual {v3, v4}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    nop

    .line 364
    const/4 v5, 0x1

    return v5

    .line 359
    :catch_0
    move-exception v5

    .line 360
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v3, v4}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for persisting. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v6, 0x0

    return v6
.end method
