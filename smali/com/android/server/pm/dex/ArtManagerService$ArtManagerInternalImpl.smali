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


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/dex/ArtManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/dex/ArtManagerService;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;->this$0:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-direct {p0}, Landroid/content/pm/dex/ArtManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/dex/ArtManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/dex/ArtManagerService$1;

    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;)V

    return-void
.end method


# virtual methods
.method public getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "abi"    # Ljava/lang/String;

    .line 639
    const-string v0, "ArtManagerService"

    :try_start_0
    invoke-static {p2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "isa":Ljava/lang/String;
    nop

    .line 641
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v2

    .line 642
    .local v2, "optInfo":Ldalvik/system/DexFile$OptimizationInfo;
    invoke-virtual {v2}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 643
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

    .line 648
    .end local v0    # "compilationReason":Ljava/lang/String;
    .end local v3    # "compilationFilter":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 649
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

    .line 651
    const-string v3, "error"

    .line 652
    .restart local v3    # "compilationFilter":Ljava/lang/String;
    const-string v0, "error"

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "compilationReason":Ljava/lang/String;
    goto :goto_1

    .line 644
    .end local v0    # "compilationReason":Ljava/lang/String;
    .end local v3    # "compilationFilter":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 645
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

    .line 646
    const-string v3, "error"

    .line 647
    .restart local v3    # "compilationFilter":Ljava/lang/String;
    const-string v0, "error"

    .line 653
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "compilationReason":Ljava/lang/String;
    :goto_0
    nop

    .line 655
    :goto_1
    invoke-static {v3}, Lcom/android/server/pm/dex/ArtManagerService;->access$100(Ljava/lang/String;)I

    move-result v1

    .line 656
    .local v1, "compilationFilterTronValue":I
    invoke-static {v0}, Lcom/android/server/pm/dex/ArtManagerService;->access$200(Ljava/lang/String;)I

    move-result v2

    .line 658
    .local v2, "compilationReasonTronValue":I
    new-instance v4, Landroid/content/pm/dex/PackageOptimizationInfo;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    return-object v4
.end method
