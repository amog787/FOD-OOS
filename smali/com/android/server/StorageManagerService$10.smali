.class Lcom/android/server/StorageManagerService$10;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$listener:Landroid/os/IVoldTaskListener;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 2524
    iput-object p1, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$10;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 2550
    iget-object v0, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$10;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$4600(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 2553
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 2527
    iget-object v0, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$10;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$4500(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 2530
    if-eqz p1, :cond_0

    return-void

    .line 2532
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2533
    .local v0, "path":Ljava/lang/String;
    const-string v1, "bytes"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2534
    .local v1, "bytes":J
    const-string/jumbo v3, "time"

    invoke-virtual {p2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2536
    .local v3, "time":J
    iget-object v5, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$2000(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Landroid/os/DropBoxManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/DropBoxManager;

    .line 2537
    .local v5, "dropBox":Landroid/os/DropBoxManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v7, v0}, Lcom/android/server/StorageManagerService;->access$4700(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "storage_trim"

    invoke-virtual {v5, v7, v6}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    iget-object v6, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v6}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2540
    :try_start_0
    iget-object v7, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v7, v0}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v7

    .line 2541
    .local v7, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v7, :cond_1

    .line 2542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 2543
    iget-object v8, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->access$4900(Lcom/android/server/StorageManagerService;)V

    .line 2545
    .end local v7    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    monitor-exit v6

    .line 2546
    return-void

    .line 2545
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
