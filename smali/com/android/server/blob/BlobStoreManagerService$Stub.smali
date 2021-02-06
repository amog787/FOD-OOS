.class Lcom/android/server/blob/BlobStoreManagerService$Stub;
.super Landroid/app/blob/IBlobStoreManager$Stub;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1414
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Landroid/app/blob/IBlobStoreManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p2, "x1"    # Lcom/android/server/blob/BlobStoreManagerService$1;

    .line 1414
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public abandonSession(JLjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1456
    long-to-float v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sessionId must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 1458
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1460
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1461
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1463
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, p2, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$1500(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)V

    .line 1464
    return-void
.end method

.method public acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    .locals 9
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "descriptionResId"    # I
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "leaseExpiryTimeMillis"    # J
    .param p6, "packageName"    # Ljava/lang/String;

    .line 1493
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1494
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1495
    nop

    .line 1496
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description must be valid; descriptionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1495
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1499
    const-string/jumbo v0, "leaseExpiryTimeMillis must not be negative"

    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 1501
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1503
    invoke-static {p3}, Lcom/android/server/blob/BlobStoreConfig;->getTruncatedLeaseDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 1505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1506
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p6}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1508
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1509
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1508
    invoke-virtual {v1, p6, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, v0

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/android/server/blob/BlobStoreManagerService;->access$1700(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    nop

    .line 1522
    return-void

    .line 1519
    :catch_0
    move-exception v1

    .line 1520
    .local v1, "e":Landroid/os/LimitExceededException;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1517
    .end local v1    # "e":Landroid/os/LimitExceededException;
    :catch_1
    move-exception v1

    .line 1518
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1510
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J
    .locals 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1419
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1420
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1421
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1423
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1424
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1426
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1427
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1426
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1433
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1300(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1434
    :catch_0
    move-exception v1

    .line 1435
    .local v1, "e":Landroid/os/LimitExceededException;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1428
    .end local v1    # "e":Landroid/os/LimitExceededException;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to create session; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteBlob(J)V
    .locals 3
    .param p1, "blobId"    # J

    .line 1587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1588
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1593
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2200(Lcom/android/server/blob/BlobStoreManagerService;JI)V

    .line 1594
    return-void

    .line 1589
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system uid is allowed to call deleteBlob()"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1630
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "BlobStore"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1632
    :cond_0
    invoke-static {p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->parse([Ljava/lang/String;)Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    move-result-object v0

    .line 1634
    .local v0, "dumpArgs":Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1635
    .local v1, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpHelp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1636
    const-string v2, "dumpsys blob_store [options]:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1638
    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->access$2500(Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1639
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1640
    return-void

    .line 1643
    :cond_1
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreManagerService;->access$2600(Lcom/android/server/blob/BlobStoreManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1644
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentMaxSessionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v4}, Lcom/android/server/blob/BlobStoreManagerService;->access$2700(Lcom/android/server/blob/BlobStoreManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1649
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpSessions()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1650
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v3, v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2800(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1651
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1653
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpBlobs()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1654
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v3, v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2900(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1655
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1657
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpConfig()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1660
    const-string v2, "BlobStore config:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1662
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreManagerService;->access$2000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/blob/BlobStoreConfig;->dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/Context;)V

    .line 1663
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1664
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1666
    :cond_5
    return-void

    .line 1657
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;
    .locals 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1610
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1611
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1612
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1614
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1615
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1617
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1618
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1617
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1623
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$2400(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object v1

    return-object v1

    .line 1619
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation

    .line 1599
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1602
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1604
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->access$2300(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getRemainingLeaseQuotaBytes(Ljava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1545
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1547
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1900(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1672
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    .line 1673
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1672
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$waitForIdle$0$BlobStoreManagerService$Stub(Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 1561
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$600(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/blob/-$$Lambda$ZsFzoG2loyqNOR2cNbo-thrNK5c;

    invoke-direct {v1, p1}, Lcom/android/server/blob/-$$Lambda$ZsFzoG2loyqNOR2cNbo-thrNK5c;-><init>(Landroid/os/RemoteCallback;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1562
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1561
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    return-void
.end method

.method public synthetic lambda$waitForIdle$1$BlobStoreManagerService$Stub(Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 1560
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$3000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$mVXWAa695LfE4TlN6SGB9gG_po0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$mVXWAa695LfE4TlN6SGB9gG_po0;-><init>(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1564
    return-void
.end method

.method public openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1469
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1470
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1471
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1474
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1476
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1477
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1476
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1600(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1484
    :catch_0
    move-exception v1

    .line 1485
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1478
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;
    .locals 3
    .param p1, "sessionId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1443
    long-to-float v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sessionId must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 1445
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1448
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1450
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, p2, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$1400(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v1

    return-object v1
.end method

.method public queryBlobsForUser(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation

    .line 1570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 1575
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1576
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 1578
    .local v0, "resolvedUserId":I
    :goto_0
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1580
    .local v1, "amInternal":Landroid/app/ActivityManagerInternal;
    invoke-virtual {v1, v0}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 1582
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2100(Lcom/android/server/blob/BlobStoreManagerService;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1571
    .end local v0    # "resolvedUserId":I
    .end local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system uid is allowed to call queryBlobsForUser()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V
    .locals 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1526
    const-string v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1527
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1528
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1531
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1533
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1534
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1533
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$1800(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)V

    .line 1540
    return-void

    .line 1535
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public waitForIdle(Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 1552
    const-string/jumbo v0, "remoteCallback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1554
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$2000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller is not allowed to call this; caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1554
    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$600(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$JZxuUmbjRd3Yb5IYUT6J1m14zis;

    invoke-direct {v1, p0, p1}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$JZxuUmbjRd3Yb5IYUT6J1m14zis;-><init>(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1565
    return-void
.end method
