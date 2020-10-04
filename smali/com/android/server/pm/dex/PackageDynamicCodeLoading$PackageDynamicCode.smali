.class Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
.super Ljava/lang/Object;
.source "PackageDynamicCodeLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDynamicCodeLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDynamicCode"
.end annotation


# instance fields
.field final mFileUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    .line 519
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;

    .line 510
    invoke-direct {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V
    .locals 5
    .param p1, "original"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    .line 523
    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 524
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    new-instance v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    .line 525
    .local v2, "newValue":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    iget-object v3, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .end local v2    # "newValue":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .param p2, "x1"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;

    .line 510
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;CILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 510
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->add(Ljava/lang/String;CILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .param p1, "x1"    # I

    .line 510
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->removeUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->removeFile(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/util/Set;

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->syncData(Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method private add(Ljava/lang/String;CILjava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileType"    # C
    .param p3, "userId"    # I
    .param p4, "loadingPackage"    # Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 531
    .local v0, "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    if-nez v0, :cond_1

    .line 532
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 533
    return v3

    .line 535
    :cond_0
    new-instance v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    aput-object p4, v4, v3

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v4, v3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(CI[Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    move-object v0, v1

    .line 536
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    return v2

    .line 539
    :cond_1
    iget v1, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    if-ne v1, p3, :cond_2

    .line 547
    iget-object v1, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 542
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot change userId for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeFile(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 566
    .local v0, "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/4 v1, 0x1

    return v1

    .line 567
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private removeUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 554
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 556
    .local v2, "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    iget v3, v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    if-ne v3, p1, :cond_0

    .line 557
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 558
    const/4 v0, 0x1

    .line 560
    .end local v2    # "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    :cond_0
    goto :goto_0

    .line 561
    :cond_1
    return v0
.end method

.method private syncData(Ljava/util/Map;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 576
    .local p1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p2, "owningPackageUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 577
    .local v0, "fileIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 578
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 579
    .local v1, "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    iget v2, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 580
    .local v2, "fileUserId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 585
    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 586
    .local v3, "loaderIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 587
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 588
    .local v4, "loader":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 589
    .local v5, "loadingPackageUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_1

    .line 590
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 591
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 593
    .end local v4    # "loader":Ljava/lang/String;
    .end local v5    # "loadingPackageUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    goto :goto_1

    .line 594
    :cond_3
    iget-object v4, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 595
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 598
    .end local v1    # "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .end local v2    # "fileUserId":I
    .end local v3    # "loaderIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    goto :goto_0

    .line 599
    :cond_5
    return-void
.end method
