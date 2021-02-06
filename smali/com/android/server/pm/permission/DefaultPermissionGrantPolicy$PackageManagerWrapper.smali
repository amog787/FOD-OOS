.class public abstract Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PackageManagerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1649
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 1705
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 1706
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    if-nez v0, :cond_0

    .line 1707
    const/4 v1, 0x0

    return-object v1

    .line 1710
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    return-object v1
.end method

.method abstract getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
.end method

.method abstract getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I
.end method

.method abstract getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
.end method

.method getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1671
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1672
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1675
    :cond_0
    return-object v0

    .line 1673
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method abstract grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
.end method

.method abstract isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
.end method

.method isPermissionDangerous(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1688
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 1689
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1690
    return v1

    .line 1693
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method isPermissionRestricted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1679
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 1680
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    if-nez v0, :cond_0

    .line 1681
    const/4 v1, 0x0

    return v1

    .line 1684
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result v1

    return v1
.end method

.method isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 1726
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 1727
    const/4 v0, 0x1

    return v0

    .line 1729
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1730
    return v1

    .line 1732
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1733
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$600(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1732
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1734
    .local v0, "disabledPkg":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2

    .line 1735
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1736
    .local v2, "disabledPackageAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 1738
    return v1

    .line 1740
    .end local v2    # "disabledPackageAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_3

    .line 1741
    return v1

    .line 1740
    :cond_3
    nop

    .line 1743
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$600(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 1718
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1719
    return v0

    .line 1721
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1722
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1721
    :goto_0
    return v0
.end method

.method isSystemPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1714
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method abstract revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
.end method

.method abstract updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V
.end method
