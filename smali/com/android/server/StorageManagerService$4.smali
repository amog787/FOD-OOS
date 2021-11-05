.class Lcom/android/server/StorageManagerService$4;
.super Landroid/os/IVoldListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 1352
    iput-object p1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskCreated(Ljava/lang/String;I)V
    .locals 6
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1355
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1356
    :try_start_0
    const-string/jumbo v1, "persist.sys.adoptable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1357
    .local v1, "value":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1bb67bb3

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x5b18fa1b

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "force_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_2
    const-string v3, "force_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_1

    .line 1362
    :cond_3
    and-int/lit8 p2, p2, -0x2

    goto :goto_1

    .line 1359
    :cond_4
    or-int/lit8 p2, p2, 0x1

    .line 1360
    nop

    .line 1365
    :goto_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    new-instance v3, Landroid/os/storage/DiskInfo;

    invoke-direct {v3, p1, p2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    nop

    .end local v1    # "value":Ljava/lang/String;
    monitor-exit v0

    .line 1367
    return-void

    .line 1366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .locals 3
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1394
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1396
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_0

    .line 1397
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$3300(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$3400(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    .line 1399
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    monitor-exit v0

    .line 1400
    return-void

    .line 1399
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "sizeBytes"    # J
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "sysPath"    # Ljava/lang/String;

    .line 1382
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1383
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1384
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_0

    .line 1385
    iput-wide p2, v1, Landroid/os/storage/DiskInfo;->size:J

    .line 1386
    iput-object p4, v1, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 1387
    iput-object p5, v1, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 1389
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    monitor-exit v0

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .locals 3
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1371
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1373
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_0

    .line 1374
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService;->access$3200(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V

    .line 1376
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    monitor-exit v0

    .line 1377
    return-void

    .line 1376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "diskId"    # Ljava/lang/String;
    .param p4, "partGuid"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 1405
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1406
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1407
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    new-instance v2, Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, p1, p2, v1, p4}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1408
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iput p5, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1409
    iget-object v3, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    iget-object v3, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService;->access$3500(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 1411
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    monitor-exit v0

    .line 1412
    return-void

    .line 1411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .locals 4
    .param p1, "volId"    # Ljava/lang/String;

    .line 1471
    const/4 v0, 0x0

    .line 1472
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1473
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    move-object v0, v2

    .line 1474
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    if-eqz v0, :cond_1

    .line 1477
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3700(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/storage/StorageSessionController;->onVolumeRemove(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/StorageUserConnection;

    .line 1479
    :try_start_1
    iget v1, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1480
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3800(Lcom/android/server/StorageManagerService;)Lcom/android/server/pm/Installer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Installer;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1484
    :cond_0
    goto :goto_0

    .line 1482
    :catch_0
    move-exception v1

    .line 1483
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed when private volume unmounted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1486
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_1
    :goto_0
    return-void

    .line 1474
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "internalPath"    # Ljava/lang/String;

    .line 1461
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1463
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 1464
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 1466
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    monitor-exit v0

    .line 1467
    return-void

    .line 1466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "fsType"    # Ljava/lang/String;
    .param p3, "fsUuid"    # Ljava/lang/String;
    .param p4, "fsLabel"    # Ljava/lang/String;

    .line 1439
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1440
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1441
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 1442
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 1443
    iput-object p3, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 1444
    iput-object p4, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 1446
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    monitor-exit v0

    .line 1447
    return-void

    .line 1446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1453
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 1454
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1456
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    monitor-exit v0

    .line 1457
    return-void

    .line 1456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 1416
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1417
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1418
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 1419
    iget v2, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1420
    .local v2, "oldState":I
    move v3, p2

    .line 1421
    .local v3, "newState":I
    iput v3, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1422
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 1426
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1428
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1429
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1430
    iget-object v5, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$2600(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1431
    iget-object v5, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5, v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$3600(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 1433
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v2    # "oldState":I
    .end local v3    # "newState":I
    .end local v4    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    monitor-exit v0

    .line 1434
    return-void

    .line 1433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
