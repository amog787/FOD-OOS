.class Lcom/android/server/StorageManagerService$8;
.super Landroid/os/IVoldMountCallback$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 2275
    iput-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Landroid/os/IVoldMountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "internalPath"    # Ljava/lang/String;

    .line 2279
    const-string v0, "Failed to close FUSE device fd"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2280
    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p3, v2, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 2281
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 2283
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$3700(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    :try_end_0
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2284
    const/4 v3, 0x1

    .line 2296
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2299
    goto :goto_0

    .line 2297
    :catch_0
    move-exception v4

    .line 2298
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2284
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return v3

    .line 2295
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2285
    :catch_1
    move-exception v3

    .line 2286
    .local v3, "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mount volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2288
    const/16 v4, 0xa

    .line 2289
    .local v4, "nextResetSeconds":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling reset in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object v5, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$2600(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2291
    iget-object v5, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$2600(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v7}, Lcom/android/server/StorageManagerService;->access$2600(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v4

    .line 2292
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 2291
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2293
    const/4 v5, 0x0

    .line 2296
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2299
    goto :goto_1

    .line 2297
    :catch_2
    move-exception v6

    .line 2298
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2293
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return v5

    .line 2296
    .end local v3    # "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    .end local v4    # "nextResetSeconds":I
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2299
    goto :goto_3

    .line 2297
    :catch_3
    move-exception v4

    .line 2298
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2300
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    throw v3
.end method
