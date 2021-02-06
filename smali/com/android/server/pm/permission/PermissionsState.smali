.class public final Lcom/android/server/pm/permission/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionsState$PermissionState;,
        Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private final mLock:Ljava/lang/Object;

.field private mMissing:Landroid/util/SparseBooleanArray;

.field private mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState;)V
    .locals 1
    .param p1, "prototype"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 87
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 56
    invoke-static {}, Lcom/android/server/pm/permission/PermissionsState;->invalidateCache()V

    return-void
.end method

.method private static appendInts([I[I)[I
    .locals 3
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    .line 728
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 729
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 730
    .local v2, "guid":I
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 729
    .end local v2    # "guid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    :cond_0
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .locals 3
    .param p0, "userId"    # I

    .line 737
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 762
    monitor-exit v0

    return-void

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 768
    :cond_1
    monitor-exit v0

    .line 770
    return-void

    .line 768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .locals 4
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 743
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "permName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    .line 747
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 749
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 750
    .local v2, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v2, :cond_1

    .line 751
    new-instance v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v3, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    move-object v2, v3

    .line 752
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :cond_1
    monitor-exit v1

    return-object v2

    .line 755
    .end local v2    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 633
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 635
    monitor-exit v0

    return-object v2

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 638
    .local v1, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v1, :cond_1

    .line 639
    monitor-exit v0

    return-object v2

    .line 642
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 643
    .end local v1    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 647
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 649
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 651
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 654
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v1, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 657
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 658
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 660
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v5

    .line 661
    .local v5, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v5, :cond_1

    .line 662
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v4    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .end local v5    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 666
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    return-object v1

    .line 667
    .end local v1    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v2    # "permissionCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .locals 8
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 671
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 672
    return v1

    .line 675
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 676
    .local v0, "hasGids":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 678
    .local v3, "oldGids":[I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v4

    .line 680
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->grant(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 681
    const/4 v1, -0x1

    return v1

    .line 684
    :cond_2
    if-eqz v0, :cond_3

    .line 685
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v5

    .line 686
    .local v5, "newGids":[I
    array-length v6, v3

    array-length v7, v5

    if-eq v6, v7, :cond_3

    .line 687
    return v2

    .line 691
    .end local v5    # "newGids":[I
    :cond_3
    return v1
.end method

.method private hasPermissionRequiringReview(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 536
    .local v1, "permissionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 537
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 538
    .local v3, "permission":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_0

    .line 540
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 536
    .end local v3    # "permission":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v1    # "permissionCount":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 545
    const/4 v0, 0x0

    return v0

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static invalidateCache()V
    .locals 0

    .line 101
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 102
    return-void
.end method

.method private revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .locals 9
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 695
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "permName":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 697
    return v2

    .line 700
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 701
    .local v1, "hasGids":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v4

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 703
    .local v4, "oldGids":[I
    :goto_0
    const/4 v5, 0x0

    .line 704
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 705
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-object v5, v7

    .line 706
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->revoke(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 709
    const/4 v2, -0x1

    return v2

    .line 712
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 713
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    .line 716
    :cond_3
    if-eqz v1, :cond_4

    .line 717
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v6

    .line 718
    .local v6, "newGids":[I
    array-length v7, v4

    array-length v8, v6

    if-eq v7, v8, :cond_4

    .line 719
    return v3

    .line 723
    .end local v6    # "newGids":[I
    :cond_4
    return v2

    .line 706
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 8
    .param p1, "userId"    # I

    .line 576
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 580
    .local v0, "gids":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    .line 582
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 583
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 584
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 585
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 586
    goto :goto_1

    .line 588
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 589
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v6

    .line 590
    .local v6, "permGids":[I
    sget-object v7, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    if-eq v6, v7, :cond_1

    .line 591
    invoke-static {v0, v6}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v7

    move-object v0, v7

    .line 583
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .end local v6    # "permGids":[I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "permissionCount":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v1

    .line 597
    return-object v0

    .line 595
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public computeGids([I)[I
    .locals 5
    .param p1, "userIds"    # [I

    .line 607
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 609
    .local v0, "gids":[I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 610
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v4

    .line 611
    .local v4, "userGids":[I
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 609
    .end local v3    # "userId":I
    .end local v4    # "userGids":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    :cond_0
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V
    .locals 8
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 110
    if-ne p1, p0, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 117
    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 122
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_3

    .line 124
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 126
    :cond_3
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 127
    .local v1, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 128
    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 129
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 130
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v7, v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    nop

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "permissionCount":I
    .end local v3    # "i":I
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 136
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    if-eq v1, v0, :cond_5

    .line 137
    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_7

    .line 142
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_6

    .line 143
    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 148
    :cond_7
    :goto_2
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_8

    .line 150
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 152
    :cond_8
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 153
    .local v0, "missingSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_9

    .line 154
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    iget-object v5, p1, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    .end local v0    # "missingSize":I
    .end local v1    # "i":I
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_b

    .line 159
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_a

    .line 160
    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    goto :goto_4

    .line 162
    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 165
    :cond_b
    :goto_4
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_d

    .line 166
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_c

    .line 167
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 169
    :cond_c
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 170
    .local v0, "userCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_d

    .line 171
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 172
    .local v2, "reviewRequired":Z
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 170
    .end local v2    # "reviewRequired":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 176
    .end local v0    # "userCount":I
    .end local v1    # "i":I
    :cond_d
    return-void

    .line 133
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 180
    if-ne p0, p1, :cond_0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 184
    return v0

    .line 186
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 187
    return v0

    .line 189
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState;

    .line 191
    .local v1, "other":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 192
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v3, :cond_3

    .line 193
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v3, :cond_4

    .line 194
    monitor-exit v2

    return v0

    .line 196
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 197
    monitor-exit v2

    return v0

    .line 199
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 202
    return v0

    .line 205
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_6

    .line 206
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_7

    .line 207
    return v0

    .line 209
    :cond_6
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 210
    return v0

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 421
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 442
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    .line 464
    .local v0, "installPermState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v1

    return v1

    .line 467
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v1

    .line 468
    .local v1, "runtimePermState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 471
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getPermissions(I)Ljava/util/Set;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 385
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 387
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 389
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 392
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 394
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 395
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 396
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 398
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    goto :goto_1

    .line 403
    :cond_1
    const/4 v5, -0x1

    if-eq p1, v5, :cond_2

    .line 404
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 405
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v4    # "permission":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return-object v1

    .line 411
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "permissionCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 432
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 451
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 257
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 282
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 283
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 284
    return v0

    .line 286
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 326
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 338
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 340
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 342
    monitor-exit v0

    return v2

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 346
    .local v1, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 347
    .end local v1    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 356
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 358
    monitor-exit v0

    return v2

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 361
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 362
    monitor-exit v0

    return v3

    .line 360
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 365
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 367
    return v2

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRequestedPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 315
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMissing(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPermissionReviewRequired(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    .line 621
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 623
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 625
    invoke-static {}, Lcom/android/server/pm/permission/PermissionsState;->invalidateCache()V

    .line 626
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 629
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 630
    return-void

    .line 626
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;

    .line 269
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I

    .line 299
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 300
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 301
    return v0

    .line 303
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public setGlobalGids([I)V
    .locals 1
    .param p1, "globalGids"    # [I

    .line 95
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 98
    :cond_0
    return-void
.end method

.method public setMissing(ZI)V
    .locals 2
    .param p1, "missing"    # Z
    .param p2, "userId"    # I

    .line 229
    if-eqz p1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 242
    :cond_2
    :goto_0
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    .locals 7
    .param p1, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    .line 484
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 486
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 488
    .local v2, "mayChangeFlags":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 489
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_3

    .line 490
    if-nez v2, :cond_2

    .line 491
    monitor-exit v3

    return v1

    .line 493
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 495
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 499
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-object v3, v5

    .line 500
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    if-nez v3, :cond_5

    .line 503
    if-nez v2, :cond_4

    .line 504
    return v1

    .line 506
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v3

    .line 509
    :cond_5
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v1

    .line 511
    .local v1, "oldFlags":I
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    .line 512
    .local v4, "updated":Z
    if-eqz v4, :cond_8

    .line 513
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v5

    .line 514
    .local v5, "newFlags":I
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_7

    and-int/lit8 v6, v5, 0x40

    if-eqz v6, :cond_7

    .line 516
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_6

    .line 517
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 519
    :cond_6
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 520
    :cond_7
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_8

    and-int/lit8 v0, v5, 0x40

    if-nez v0, :cond_8

    .line 522
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_8

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermissionRequiringReview(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 523
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 524
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 530
    .end local v5    # "newFlags":I
    :cond_8
    :goto_2
    return v4

    .line 500
    .end local v1    # "oldFlags":I
    .end local v4    # "updated":Z
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 495
    .end local v3    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .line 550
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 554
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 556
    :cond_0
    const/4 v1, 0x0

    .line 557
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 558
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 559
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 560
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v5

    or-int/2addr v1, v5

    .line 558
    .end local v4    # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    return v1

    .line 564
    .end local v1    # "changed":Z
    .end local v2    # "permissionCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
