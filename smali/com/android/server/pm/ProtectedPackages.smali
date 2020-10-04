.class public Lcom/android/server/pm/ProtectedPackages;
.super Ljava/lang/Object;
.source "ProtectedPackages.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mDeviceProvisioningPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mProfileOwnerPackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private declared-synchronized hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 74
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 75
    monitor-exit p0

    return v0

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 78
    iget v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 79
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 80
    monitor-exit p0

    return v2

    .line 83
    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 85
    monitor-exit p0

    return v2

    .line 88
    :cond_2
    monitor-exit p0

    return v0

    .line 73
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isProtectedPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 105
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .restart local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0
.end method


# virtual methods
.method public declared-synchronized getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 91
    .end local p1    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 124
    :goto_1
    return v0
.end method

.method public isPackageStateProtected(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-direct {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 115
    :goto_1
    return v0
.end method

.method public declared-synchronized setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    monitor-enter p0

    .line 66
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    .line 67
    nop

    .line 68
    const/16 v0, -0x2710

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 69
    if-nez p3, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    .end local p1    # "deviceOwnerUserId":I
    .end local p2    # "deviceOwnerPackage":Ljava/lang/String;
    .end local p3    # "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
