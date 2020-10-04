.class public final Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmsChinaGmsInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 26632
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishSettingGMSPkgsState()V
    .locals 2

    .line 26665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    if-eqz v0, :cond_0

    .line 26666
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26669
    :cond_0
    goto :goto_0

    .line 26668
    :catch_0
    move-exception v0

    .line 26670
    :goto_0
    return-void
.end method

.method public setPackageState(Ljava/lang/String;II)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .line 26634
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 26639
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 26640
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .local v0, "users":[I
    goto :goto_0

    .line 26642
    .end local v0    # "users":[I
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p3, v0, v1

    .line 26646
    .restart local v0    # "users":[I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26647
    :try_start_1
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget v5, v0, v4

    .line 26648
    .local v5, "user":I
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 26649
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_2

    .line 26650
    const/4 v7, 0x0

    invoke-virtual {v6, p2, v5, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 26651
    iget v7, v6, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 26652
    .local v7, "packageUid":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26653
    .local v8, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26654
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9, p1, v1, v8, v7}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 26647
    .end local v5    # "user":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "packageUid":I
    .end local v8    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 26657
    :cond_3
    monitor-exit v2

    .line 26660
    goto :goto_2

    .line 26657
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "users":[I
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "state":I
    .end local p3    # "userId":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 26658
    .restart local v0    # "users":[I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "state":I
    .restart local p3    # "userId":I
    :catch_0
    move-exception v1

    .line 26659
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26661
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 26635
    .end local v0    # "users":[I
    :cond_4
    :goto_3
    return-void
.end method
