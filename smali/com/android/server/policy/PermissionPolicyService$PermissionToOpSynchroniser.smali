.class Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionToOpSynchroniser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    }
.end annotation


# instance fields
.field private final mAllUids:Landroid/util/SparseIntArray;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

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

.field private final mOpsToAllowIfDefault:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToDefault:Ljava/util/ArrayList;
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

.field private final mOpsToForegroundIfAllow:Ljava/util/ArrayList;
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

.field private final mOpsToIgnoreIfDefault:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAllUids:Landroid/util/SparseIntArray;

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    .line 458
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 460
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 461
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 389
    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V

    return-void
.end method

.method private addOpIfFgPermissions(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 662
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 664
    .local v0, "bgPermissionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 665
    return-void

    .line 668
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 669
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v2

    .line 670
    .local v2, "opCode":I
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 671
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 675
    .local v4, "uid":I
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_2

    .line 679
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 680
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 679
    invoke-virtual {v5, v0, v6, v7}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    .line 682
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_1

    .line 683
    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 684
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v7, p0, v4, v3, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_1
    return-void

    .line 690
    .end local v5    # "flags":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 692
    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 694
    .local v5, "isBgHardRestricted":Z
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 697
    .local v6, "isBgPermGranted":Z
    :goto_0
    if-nez v5, :cond_4

    if-eqz v6, :cond_4

    .line 698
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v8, p0, v4, v3, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 700
    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v8, p0, v4, v3, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v5    # "isBgHardRestricted":Z
    .end local v6    # "isBgPermGranted":Z
    :goto_1
    goto :goto_2

    .line 703
    :cond_5
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v6, p0, v4, v3, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :goto_2
    return-void
.end method

.method private addOpIfRestricted(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V
    .locals 10
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 566
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 567
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v1

    .line 568
    .local v1, "opCode":I
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 570
    .local v2, "uid":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 571
    return-void

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 576
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 575
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 578
    .local v3, "applyRestriction":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    .line 579
    if-eq v1, v6, :cond_d

    .line 580
    if-eqz v3, :cond_2

    .line 581
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v2, v6, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 583
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v2, v6, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 586
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 587
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v7, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 589
    invoke-virtual {v8}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 588
    invoke-static {v5, v7, v8, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v5

    .line 591
    .local v5, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    if-eq v1, v6, :cond_5

    .line 592
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->canBeGranted()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 593
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v9, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, p0, v2, v9, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 595
    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v9, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, p0, v2, v9, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_5
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v7

    .line 600
    .local v7, "op":I
    if-eq v7, v6, :cond_d

    .line 601
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getDesiredOpMode()I

    move-result v6

    if-eqz v6, :cond_b

    if-eq v6, v4, :cond_9

    const/4 v4, 0x2

    if-eq v6, v4, :cond_8

    const/4 v4, 0x3

    if-eq v6, v4, :cond_7

    const/4 v4, 0x4

    if-eq v6, v4, :cond_6

    goto :goto_2

    .line 614
    :cond_6
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Setting appop to foreground is not implemented"

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    goto :goto_2

    .line 603
    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    goto :goto_2

    .line 627
    :cond_8
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Setting appop to errored is not implemented"

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 618
    :cond_9
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->shouldSetAppOpIfNotDefault()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 619
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 621
    :cond_a
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    goto :goto_2

    .line 606
    :cond_b
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->shouldSetAppOpIfNotDefault()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 607
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 609
    :cond_c
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v5    # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .end local v7    # "op":I
    :cond_d
    :goto_2
    return-void
.end method

.method private isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 635
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 637
    .local v1, "bgPermInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Support for soft restricted background permissions not implemented"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 643
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 642
    invoke-virtual {v2, p2, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 645
    .end local v1    # "bgPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read permission state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    return v0
.end method

.method private setUidMode(IIILjava/lang/String;)V
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 786
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 788
    .local v0, "currentMode":I
    if-eq v0, p3, :cond_0

    .line 789
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 791
    :cond_0
    return-void
.end method

.method private setUidModeAllowed(IILjava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 763
    return-void
.end method

.method private setUidModeAllowedIfDefault(IILjava/lang/String;)Z
    .locals 6
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 758
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setUidModeDefault(IILjava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 807
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 808
    return-void
.end method

.method private setUidModeForeground(IILjava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 771
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 772
    return-void
.end method

.method private setUidModeForegroundIfAllow(IILjava/lang/String;)Z
    .locals 6
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 767
    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setUidModeIfMode(IIIILjava/lang/String;)Z
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "requiredModeBefore"    # I
    .param p4, "newMode"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 796
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    .line 795
    invoke-virtual {v0, v1, p2, p5}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 798
    .local v0, "currentMode":I
    if-ne v0, p3, :cond_0

    .line 799
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 800
    const/4 v1, 0x1

    return v1

    .line 803
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private setUidModeIgnored(IILjava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 780
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 781
    return-void
.end method

.method private setUidModeIgnoredIfDefault(IILjava/lang/String;)Z
    .locals 6
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 776
    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private syncPackages()V
    .locals 15

    .line 472
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 474
    .local v0, "alreadySetAppOps":Landroid/util/LongSparseLongArray;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 475
    .local v1, "allowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-wide/16 v3, 0x1

    if-ge v2, v1, :cond_0

    .line 476
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 478
    .local v5, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v8, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowed(IILjava/lang/String;)V

    .line 479
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 475
    .end local v5    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 483
    .local v2, "allowIfDefaultCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 484
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 485
    .local v6, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_1

    .line 486
    goto :goto_2

    .line 489
    :cond_1
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowedIfDefault(IILjava/lang/String;)Z

    move-result v7

    .line 490
    .local v7, "wasSet":Z
    if-eqz v7, :cond_2

    .line 491
    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 483
    .end local v6    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v7    # "wasSet":Z
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 495
    .end local v5    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 496
    .local v5, "foregroundIfAllowedCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_6

    .line 497
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 498
    .local v7, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v8

    if-ltz v8, :cond_4

    .line 499
    goto :goto_4

    .line 502
    :cond_4
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v10, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForegroundIfAllow(IILjava/lang/String;)Z

    move-result v8

    .line 503
    .local v8, "wasSet":Z
    if-eqz v8, :cond_5

    .line 504
    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 496
    .end local v7    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v8    # "wasSet":Z
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 508
    .end local v6    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 509
    .local v6, "foregroundCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_8

    .line 510
    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 511
    .local v8, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v9

    if-ltz v9, :cond_7

    .line 512
    goto :goto_6

    .line 515
    :cond_7
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v11, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForeground(IILjava/lang/String;)V

    .line 516
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 509
    .end local v8    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 519
    .end local v7    # "i":I
    :cond_8
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 520
    .local v7, "ignoreCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    if-ge v8, v7, :cond_a

    .line 521
    iget-object v9, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 522
    .local v9, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v10, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v11, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v10, v11}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v10

    if-ltz v10, :cond_9

    .line 523
    goto :goto_8

    .line 526
    :cond_9
    iget v10, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v11, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v12, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnored(IILjava/lang/String;)V

    .line 527
    iget v10, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v11, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v10, v11}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 520
    .end local v9    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 530
    .end local v8    # "i":I
    :cond_a
    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 531
    .local v8, "ignoreIfDefaultCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    if-ge v9, v8, :cond_d

    .line 532
    iget-object v10, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 533
    .local v10, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v11, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v12, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v11, v12}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v11

    if-ltz v11, :cond_b

    .line 534
    goto :goto_a

    .line 537
    :cond_b
    iget v11, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v12, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v13, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v13}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnoredIfDefault(IILjava/lang/String;)Z

    move-result v11

    .line 538
    .local v11, "wasSet":Z
    if-eqz v11, :cond_c

    .line 539
    iget v12, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v13, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v12, v13}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 531
    .end local v10    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v11    # "wasSet":Z
    :cond_c
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 543
    .end local v9    # "i":I
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 544
    .local v9, "defaultCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b
    if-ge v10, v9, :cond_f

    .line 545
    iget-object v11, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 546
    .local v11, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v12, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v13, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v12, v13}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v12

    if-ltz v12, :cond_e

    .line 547
    goto :goto_c

    .line 550
    :cond_e
    iget v12, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v13, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v14, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v12, v13, v14}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeDefault(IILjava/lang/String;)V

    .line 551
    iget v12, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v13, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v12, v13}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 544
    .end local v11    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 553
    .end local v10    # "i":I
    :cond_f
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 720
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 726
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, p1, v2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isNotInstallForParallelUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    return-void

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAllUids:Landroid/util/SparseIntArray;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 735
    return-void

    .line 738
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 739
    .local v5, "permission":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v6

    .line 740
    .local v6, "opCode":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 741
    goto :goto_1

    .line 746
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v5, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 749
    .local v7, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 751
    invoke-direct {p0, v7, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addOpIfRestricted(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V

    .line 752
    invoke-direct {p0, v7, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addOpIfFgPermissions(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V

    goto :goto_1

    .line 747
    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v7

    .line 748
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 738
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "opCode":I
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 754
    :cond_3
    return-void

    .line 718
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    .line 719
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method
