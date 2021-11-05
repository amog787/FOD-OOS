.class public Lcom/android/server/pm/ShortcutBitmapSaver;
.super Ljava/lang/Object;
.source "ShortcutBitmapSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    }
.end annotation


# static fields
.field private static final ADD_DELAY_BEFORE_SAVE_FOR_TEST:Z = false

.field private static final DEBUG:Z = false

.field private static final SAVE_DELAY_MS_FOR_TEST:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final SAVE_WAIT_TIMEOUT_MS:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mPendingItems:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->SAVE_WAIT_TIMEOUT_MS:J

    .line 80
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 109
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    .line 220
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$AUDgG57FGyGDUVDAjL-7cuiE0pM;

    invoke-direct {v0, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$AUDgG57FGyGDUVDAjL-7cuiE0pM;-><init>(Lcom/android/server/pm/ShortcutBitmapSaver;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    .line 113
    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    .line 115
    return-void
.end method

.method static synthetic lambda$waitForAllSavesLocked$0(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 120
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private processPendingItems()Z
    .locals 8

    .line 249
    const/4 v0, 0x0

    .line 253
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    const/16 v1, 0x800

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 254
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 255
    const/4 v3, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 303
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 255
    :cond_1
    return v3

    .line 257
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 258
    .local v3, "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    :try_start_3
    iget-object v2, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;

    move-object v0, v2

    .line 263
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v4, 0x1

    if-nez v2, :cond_5

    .line 264
    nop

    .line 297
    if-eqz v0, :cond_4

    .line 298
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 303
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 264
    :cond_4
    return v4

    .line 271
    :cond_5
    const/4 v2, 0x0

    .line 273
    .local v2, "file":Ljava/io/File;
    :try_start_4
    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    .line 274
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    .line 273
    invoke-virtual {v5, v6, v0}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    move-result-object v5

    .line 275
    .local v5, "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    move-result-object v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v6

    .line 278
    :try_start_5
    iget-object v6, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    :try_start_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 281
    nop

    .line 283
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 292
    .end local v5    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    nop

    .line 297
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    if-eqz v0, :cond_7

    .line 298
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 303
    :cond_6
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 306
    :cond_7
    return v4

    .line 280
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    .restart local v5    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    :catchall_0
    move-exception v6

    :try_start_7
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 281
    nop

    .end local v0    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    .end local p0    # "this":Lcom/android/server/pm/ShortcutBitmapSaver;
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 285
    .end local v5    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .restart local v0    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutBitmapSaver;
    :catch_0
    move-exception v5

    .line 286
    .local v5, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v6, "ShortcutService"

    const-string v7, "Unable to write bitmap to file"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 289
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 291
    :cond_8
    nop

    .line 297
    if-eqz v0, :cond_a

    .line 298
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 303
    :cond_9
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 291
    :cond_a
    return v4

    .line 258
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v0    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local p0    # "this":Lcom/android/server/pm/ShortcutBitmapSaver;
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 294
    .restart local v0    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutBitmapSaver;
    :catchall_2
    move-exception v2

    .line 297
    if-eqz v0, :cond_c

    .line 298
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 303
    :cond_b
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 305
    :cond_c
    throw v2
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    .line 312
    .local v1, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending saves: Num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Executor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 316
    .local v3, "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 319
    .end local v3    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    goto :goto_0

    .line 320
    .end local v1    # "N":I
    :cond_0
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 138
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result v0

    .line 139
    .local v0, "success":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public synthetic lambda$new$1$ShortcutBitmapSaver()V
    .locals 1

    .line 222
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->processPendingItems()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .locals 1
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    .line 153
    const v0, 0x8a0c

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 156
    return-void
.end method

.method public saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 7
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "maxDimension"    # I
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "quality"    # I

    .line 160
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 161
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 164
    .local v1, "original":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 171
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 175
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 176
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 175
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 178
    invoke-static {v1, p2}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 180
    .local v3, "shrunk":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 181
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v3, p3, p4, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 182
    const-string v5, "ShortcutService"

    const-string v6, "Unable to compress bitmap"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 185
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 186
    .local v5, "bytes":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 189
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    if-eq v3, v1, :cond_2

    .line 190
    :try_start_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 197
    .end local v3    # "shrunk":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 198
    nop

    .line 200
    const/16 v3, 0x808

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 203
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 204
    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 208
    :cond_3
    new-instance v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v5, v4}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[BLcom/android/server/pm/ShortcutBitmapSaver$1;)V

    move-object v4, v3

    .line 209
    .local v4, "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    iget-object v6, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v6

    .line 210
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 217
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 218
    return-void

    .line 211
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 180
    .end local v5    # "bytes":[B
    .restart local v3    # "shrunk":Landroid/graphics/Bitmap;
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    .end local v1    # "original":Landroid/graphics/Bitmap;
    .end local v2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v3    # "shrunk":Landroid/graphics/Bitmap;
    .end local p0    # "this":Lcom/android/server/pm/ShortcutBitmapSaver;
    .end local p1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local p2    # "maxDimension":I
    .end local p3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local p4    # "quality":I
    :goto_0
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v1    # "original":Landroid/graphics/Bitmap;
    .restart local v2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v3    # "shrunk":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutBitmapSaver;
    .restart local p1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .restart local p2    # "maxDimension":I
    .restart local p3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .restart local p4    # "quality":I
    :catchall_3
    move-exception v4

    if-eq v3, v1, :cond_4

    .line 190
    :try_start_9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_4
    nop

    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    .end local v1    # "original":Landroid/graphics/Bitmap;
    .end local v2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Lcom/android/server/pm/ShortcutBitmapSaver;
    .end local p1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local p2    # "maxDimension":I
    .end local p3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local p4    # "quality":I
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 197
    .end local v3    # "shrunk":Landroid/graphics/Bitmap;
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v1    # "original":Landroid/graphics/Bitmap;
    .restart local v2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutBitmapSaver;
    .restart local p1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .restart local p2    # "maxDimension":I
    .restart local p3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .restart local p4    # "quality":I
    :catchall_4
    move-exception v3

    goto :goto_1

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_a
    const-string v4, "ShortcutService"

    const-string v5, "Unable to write bitmap to file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 197
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 195
    return-void

    .line 197
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 198
    throw v3
.end method

.method public waitForAllSavesLocked()Z
    .locals 5

    .line 118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 120
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$xgjvZfaiKXavxgGCSta_eIdVBnk;

    invoke-direct {v3, v0}, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$xgjvZfaiKXavxgGCSta_eIdVBnk;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    const-string v2, "Timed out waiting on saving bitmaps."

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "ShortcutService"

    const-string/jumbo v3, "interrupted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
