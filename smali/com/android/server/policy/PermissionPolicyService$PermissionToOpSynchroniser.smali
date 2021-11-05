.class Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionToOpSynchroniser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    }
.end annotation


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mOpsToAllow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToForeground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToIgnore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRuntimePermissionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .line 613
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 593
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 602
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    .line 611
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 614
    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 615
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 616
    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 617
    const-class p1, Landroid/app/AppOpsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManagerInternal;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 619
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimePermissionInfos:Landroid/util/ArrayMap;

    .line 620
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 622
    .local p1, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    nop

    .line 623
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 625
    .local v0, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 626
    .local v1, "permissionInfosSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 627
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 628
    .local v3, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimePermissionInfos:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local v3    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 573
    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V

    return-void
.end method

.method private addAppOps(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimePermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 693
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-nez v0, :cond_0

    .line 694
    return-void

    .line 696
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPermissionAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V

    .line 697
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addExtraAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V

    .line 698
    return-void
.end method

.method private addExtraAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 804
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    return-void

    .line 808
    :cond_0
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 809
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 811
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 810
    invoke-static {v1, v2, p2, v3, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v1

    .line 812
    .local v1, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result v2

    .line 813
    .local v2, "extraOpCode":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 814
    return-void

    .line 817
    :cond_1
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 818
    .local v3, "uid":I
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 819
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    .line 820
    .local v5, "extraOpToChange":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayAllowExtraAppOp()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 821
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayDenyExtraAppOpIfGranted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 824
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 826
    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    :goto_0
    return-void
.end method

.method private addPermissionAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V
    .locals 11
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 702
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    return-void

    .line 706
    :cond_0
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 707
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 708
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 709
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 708
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    .line 710
    .local v2, "permissionFlags":I
    and-int/lit8 v3, v2, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 711
    .local v3, "isReviewRequired":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 712
    return-void

    .line 717
    :cond_2
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->access$800(Ljava/lang/String;)I

    move-result v6

    .line 718
    .local v6, "appOpCode":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 720
    return-void

    .line 724
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    move-result v7

    .line 725
    .local v7, "shouldGrantAppOp":Z
    const/4 v8, 0x4

    if-eqz v7, :cond_7

    .line 726
    iget-object v9, p3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 727
    iget-object v9, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimePermissionInfos:Landroid/util/ArrayMap;

    iget-object v10, p3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionInfo;

    .line 729
    .local v9, "backgroundPermissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v9, :cond_4

    .line 730
    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v4

    goto :goto_1

    :cond_4
    move v10, v5

    .line 731
    .local v10, "shouldGrantBackgroundAppOp":Z
    :goto_1
    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    move v5, v8

    .line 732
    .end local v9    # "backgroundPermissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v10    # "shouldGrantBackgroundAppOp":Z
    .local v5, "appOpMode":I
    :goto_2
    goto :goto_3

    .line 733
    .end local v5    # "appOpMode":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "appOpMode":I
    goto :goto_3

    .line 736
    .end local v5    # "appOpMode":I
    :cond_7
    const/4 v5, 0x1

    .line 739
    .restart local v5    # "appOpMode":I
    :goto_3
    iget-object v9, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 740
    .local v9, "uid":I
    new-instance v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v10, p0, v9, v1, v6}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    .line 741
    .local v10, "opToChange":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    if-eqz v5, :cond_a

    if-eq v5, v4, :cond_9

    if-eq v5, v8, :cond_8

    goto :goto_4

    .line 746
    :cond_8
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    goto :goto_4

    .line 749
    :cond_9
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 743
    :cond_a
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    nop

    .line 752
    :goto_4
    return-void
.end method

.method private setUidMode(IIILjava/lang/String;)V
    .locals 8
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 912
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 914
    .local v0, "oldMode":I
    if-eq v0, p3, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 916
    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->access$900(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v2

    .line 915
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 917
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 919
    .local v1, "newMode":I
    if-eq v1, p3, :cond_0

    .line 923
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 924
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->access$900(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v7

    .line 923
    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 927
    .end local v1    # "newMode":I
    :cond_0
    return-void
.end method

.method private setUidModeAllowed(IILjava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 885
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 886
    return-void
.end method

.method private setUidModeForeground(IILjava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 889
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 890
    return-void
.end method

.method private setUidModeIgnored(IILjava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 893
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 894
    return-void
.end method

.method private setUidModeIgnoredIfNotAllowed(IILjava/lang/String;)Z
    .locals 4
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 900
    .local v0, "currentMode":I
    if-eqz v0, :cond_1

    .line 901
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 902
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 903
    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->access$900(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v3

    .line 902
    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 905
    :cond_0
    return v1

    .line 907
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z
    .locals 9
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 756
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 757
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 758
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 760
    .local v2, "isGranted":Z
    :goto_0
    if-nez v2, :cond_1

    .line 761
    return v4

    .line 764
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 765
    invoke-virtual {v6}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 764
    invoke-virtual {v5, v0, v1, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    .line 766
    .local v5, "permissionFlags":I
    and-int/lit8 v6, v5, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    .line 768
    .local v6, "isRevokedCompat":Z
    :goto_1
    if-eqz v6, :cond_5

    .line 775
    new-array v7, v3, [I

    const/16 v8, 0xb

    aput v8, v7, v4

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 776
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_3

    .line 777
    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 778
    :cond_3
    return v4

    .line 781
    :cond_4
    return v4

    .line 786
    :cond_5
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 787
    and-int/lit16 v7, v5, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_6

    move v7, v3

    goto :goto_2

    :cond_6
    move v7, v4

    .line 790
    .local v7, "shouldApplyRestriction":Z
    :goto_2
    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    return v3

    .line 791
    .end local v7    # "shouldApplyRestriction":Z
    :cond_8
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 792
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 794
    invoke-virtual {v7}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 793
    invoke-static {v3, v4, p2, v7, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v3

    .line 796
    .local v3, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v3}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v4

    return v4

    .line 798
    .end local v3    # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    :cond_9
    return v3
.end method

.method private syncPackages()V
    .locals 12

    .line 641
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 643
    .local v0, "alreadySetAppOps":Landroid/util/LongSparseLongArray;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 644
    .local v1, "allowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-wide/16 v3, 0x1

    if-ge v2, v1, :cond_0

    .line 645
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 647
    .local v5, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v8, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowed(IILjava/lang/String;)V

    .line 648
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 644
    .end local v5    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 652
    .local v2, "foregroundCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 653
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 654
    .local v6, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_1

    .line 655
    goto :goto_2

    .line 658
    :cond_1
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForeground(IILjava/lang/String;)V

    .line 659
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 652
    .end local v6    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 662
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 663
    .local v5, "ignoreCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_4

    .line 664
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 665
    .local v7, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v8

    if-ltz v8, :cond_3

    .line 666
    goto :goto_4

    .line 669
    :cond_3
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v10, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnored(IILjava/lang/String;)V

    .line 670
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 663
    .end local v7    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 673
    .end local v6    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 674
    .local v6, "ignoreIfNotAllowedCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_7

    .line 675
    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 676
    .local v8, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v9

    if-ltz v9, :cond_5

    .line 677
    goto :goto_6

    .line 680
    :cond_5
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v11, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnoredIfNotAllowed(IILjava/lang/String;)Z

    move-result v9

    .line 681
    .local v9, "wasSet":Z
    if-eqz v9, :cond_6

    .line 682
    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v11, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v10, v11}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 674
    .end local v8    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v9    # "wasSet":Z
    :cond_6
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 685
    .end local v7    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 839
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 840
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 844
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 845
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 850
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_2

    .line 861
    :cond_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 863
    .local v3, "uid":I
    if-eqz v3, :cond_4

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 873
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, p1, v5}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isNotInstallForParallelUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 875
    return-void

    .line 879
    :cond_2
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 880
    .local v7, "permission":Ljava/lang/String;
    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addAppOps(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V

    .line 879
    .end local v7    # "permission":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 882
    :cond_3
    return-void

    .line 866
    :cond_4
    :goto_1
    return-void

    .line 852
    .end local v3    # "uid":I
    :cond_5
    :goto_2
    return-void

    .line 846
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method
