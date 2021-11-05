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

    .line 26493
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishSettingGMSPkgsState()V
    .locals 2

    .line 26526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 26527
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26530
    :cond_0
    goto :goto_0

    .line 26529
    :catch_0
    move-exception v0

    .line 26531
    :goto_0
    return-void
.end method

.method public setPackageState(Ljava/lang/String;II)V
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .line 26495
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    if-eqz v8, :cond_4

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v15, p2

    goto/16 :goto_6

    .line 26500
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne v9, v0, :cond_1

    .line 26501
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    move-object v10, v0

    .local v0, "users":[I
    goto :goto_0

    .line 26503
    .end local v0    # "users":[I
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v9, v0, v2

    move-object v10, v0

    .line 26507
    .local v10, "users":[I
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 26508
    :try_start_1
    array-length v0, v10

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_3

    aget v2, v10, v12

    move v13, v2

    .line 26509
    .local v13, "user":I
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v2

    .line 26510
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v14, :cond_2

    .line 26511
    const/4 v2, 0x0

    move/from16 v15, p2

    :try_start_2
    invoke-virtual {v14, v15, v13, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 26512
    iget v2, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v13, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 26513
    .local v6, "packageUid":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    .line 26514
    .local v7, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26515
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object v5, v7

    move-object/from16 v17, v7

    .end local v7    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v17, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_2

    .line 26510
    .end local v6    # "packageUid":I
    .end local v17    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move/from16 v15, p2

    .line 26508
    .end local v13    # "user":I
    .end local v14    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 26518
    :cond_3
    move/from16 v15, p2

    monitor-exit v11

    .line 26521
    goto :goto_5

    .line 26518
    :catchall_0
    move-exception v0

    move/from16 v15, p2

    :goto_3
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v10    # "users":[I
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "state":I
    .end local p3    # "userId":I
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 26519
    .restart local v10    # "users":[I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "state":I
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_4

    .line 26518
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 26519
    :catch_1
    move-exception v0

    move/from16 v15, p2

    .line 26520
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26522
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 26495
    .end local v10    # "users":[I
    :cond_4
    move/from16 v15, p2

    .line 26496
    :goto_6
    return-void
.end method
