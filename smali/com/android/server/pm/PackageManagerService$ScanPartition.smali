.class public Lcom/android/server/pm/PackageManagerService$ScanPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanPartition"
.end annotation


# instance fields
.field public final scanFlag:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 1
    .param p1, "partition"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 2809
    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 2810
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlag:I

    .line 2811
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService$ScanPartition;I)V
    .locals 1
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "original"    # Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .param p3, "additionalScanFlag"    # I

    .line 2820
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 2821
    iget v0, p2, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlag:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlag:I

    .line 2822
    return-void
.end method

.method private static scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I
    .locals 3
    .param p0, "partition"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 2825
    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2837
    const/high16 v0, 0x200000

    return v0

    .line 2839
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine scan flag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2835
    :cond_1
    const/high16 v0, 0x100000

    return v0

    .line 2833
    :cond_2
    const/high16 v0, 0x40000

    return v0

    .line 2831
    :cond_3
    const/high16 v0, 0x400000

    return v0

    .line 2829
    :cond_4
    const/high16 v0, 0x80000

    return v0

    .line 2827
    :cond_5
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$ScanPartition;->getFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
