.class Lcom/android/server/appop/AppOpsService$9;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/app/AppOpsManager$HistoricalOps;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field final synthetic val$candidates:Landroid/util/ArraySet;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 6081
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 8
    .param p1, "histOps"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 6084
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 6085
    .local v0, "uidCount":I
    const/4 v1, 0x0

    .local v1, "uidIdx":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 6086
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v2

    .line 6088
    .local v2, "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v3

    .line 6089
    .local v3, "pkgCount":I
    const/4 v4, 0x0

    .local v4, "pkgIdx":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 6090
    invoke-virtual {v2, v4}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v5

    .line 6091
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 6092
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6093
    goto :goto_2

    .line 6095
    :cond_0
    nop

    .line 6096
    invoke-virtual {v2, v4}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v6

    .line 6097
    .local v6, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v7

    if-eqz v7, :cond_1

    .line 6098
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6089
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6085
    .end local v2    # "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v3    # "pkgCount":I
    .end local v4    # "pkgIdx":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6102
    .end local v1    # "uidIdx":I
    :cond_3
    monitor-enter p0

    .line 6103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$1400(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 6104
    .local v1, "numPkgs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_4

    .line 6105
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->access$1400(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6104
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6107
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Lcom/android/server/appop/AppOpsService;->access$1402(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    .line 6108
    nop

    .end local v1    # "numPkgs":I
    monitor-exit p0

    .line 6109
    return-void

    .line 6108
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 6081
    check-cast p1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$9;->accept(Landroid/app/AppOpsManager$HistoricalOps;)V

    return-void
.end method
