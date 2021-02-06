.class Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
.super Landroid/content/pm/dex/ArtManagerInternal;
.source "ArtManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/ArtManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtManagerInternalImpl"
.end annotation


# static fields
.field private static final IORAP_DIR:Ljava/lang/String; = "/data/misc/iorapd"

.field private static final TAG:Ljava/lang/String; = "ArtManagerInternalImpl"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/dex/ArtManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/dex/ArtManagerService;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;->this$0:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-direct {p0}, Landroid/content/pm/dex/ArtManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/dex/ArtManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/dex/ArtManagerService$1;

    .line 676
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;)V

    return-void
.end method

.method private checkIorapCompiledTrace(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "version"    # J

    .line 722
    const-string v0, "ArtManagerInternalImpl"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 724
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object p2, v1, v3

    const/4 v3, 0x3

    const-string v5, "compiled_traces"

    aput-object v5, v1, v3

    const/4 v3, 0x4

    const-string v5, "compiled_trace.pb"

    aput-object v5, v1, v3

    .line 722
    const-string v3, "/data/misc/iorapd"

    invoke-static {v3, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 729
    .local v1, "tracePath":Ljava/nio/file/Path;
    :try_start_0
    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    .line 730
    .local v3, "exists":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    const-string v6, " exists"

    goto :goto_0

    :cond_0
    const-string v6, " doesn\'t exist"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-eqz v3, :cond_2

    .line 732
    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v5

    .line 733
    .local v5, "bytes":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    move v2, v4

    :cond_1
    return v2

    .line 736
    .end local v5    # "bytes":J
    :cond_2
    return v3

    .line 737
    .end local v3    # "exists":Z
    :catch_0
    move-exception v3

    .line 738
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return v2
.end method


# virtual methods
.method public getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "abi"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 686
    const-string v0, "ArtManagerInternalImpl"

    :try_start_0
    invoke-static {p2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "isa":Ljava/lang/String;
    nop

    .line 688
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v2

    .line 689
    .local v2, "optInfo":Ldalvik/system/DexFile$OptimizationInfo;
    invoke-virtual {v2}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "compilationFilter":Ljava/lang/String;
    invoke-virtual {v2}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "isa":Ljava/lang/String;
    .end local v2    # "optInfo":Ldalvik/system/DexFile$OptimizationInfo;
    .local v0, "compilationReason":Ljava/lang/String;
    goto :goto_0

    .line 695
    .end local v0    # "compilationReason":Ljava/lang/String;
    .end local v3    # "compilationFilter":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested optimization status for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to an invalid abi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    const-string v3, "error"

    .line 699
    .restart local v3    # "compilationFilter":Ljava/lang/String;
    const-string v0, "error"

    .restart local v0    # "compilationReason":Ljava/lang/String;
    goto :goto_1

    .line 691
    .end local v0    # "compilationReason":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "compilationFilter":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 692
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get optimizations status for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    const-string v3, "error"

    .line 694
    .restart local v3    # "compilationFilter":Ljava/lang/String;
    const-string v0, "error"

    .line 700
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "compilationReason":Ljava/lang/String;
    :goto_0
    nop

    .line 702
    :goto_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {p0, v1, p3, v4, v5}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;->checkIorapCompiledTrace(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-iorap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    :cond_0
    invoke-static {v3}, Lcom/android/server/pm/dex/ArtManagerService;->access$100(Ljava/lang/String;)I

    move-result v1

    .line 707
    .local v1, "compilationFilterTronValue":I
    invoke-static {v0}, Lcom/android/server/pm/dex/ArtManagerService;->access$200(Ljava/lang/String;)I

    move-result v2

    .line 709
    .local v2, "compilationReasonTronValue":I
    new-instance v4, Landroid/content/pm/dex/PackageOptimizationInfo;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    return-object v4
.end method
