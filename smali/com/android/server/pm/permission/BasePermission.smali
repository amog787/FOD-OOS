.class public final Lcom/android/server/pm/permission/BasePermission;
.super Ljava/lang/Object;
.source "BasePermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/BasePermission$ProtectionLevel;,
        Lcom/android/server/pm/permission/BasePermission$PermissionType;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PackageManager"

.field public static final TYPE_BUILTIN:I = 0x1

.field public static final TYPE_DYNAMIC:I = 0x2

.field public static final TYPE_NORMAL:I


# instance fields
.field private gids:[I

.field final name:Ljava/lang/String;

.field pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

.field private perUser:Z

.field perm:Landroid/content/pm/PackageParser$Permission;

.field protectionLevel:I

.field sourcePackageName:Ljava/lang/String;

.field sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

.field final type:I

.field uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_sourcePackageName"    # Ljava/lang/String;
    .param p3, "_type"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 114
    return-void
.end method

.method private static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .param p0, "pi1"    # Landroid/content/pm/PermissionInfo;
    .param p1, "pi2"    # Landroid/content/pm/PermissionInfo;

    .line 572
    iget v0, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 573
    :cond_0
    iget v0, p0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_1

    return v2

    .line 574
    :cond_1
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_2

    return v2

    .line 575
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 576
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 578
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 584
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private static compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;

    .line 559
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 560
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 562
    :cond_1
    if-nez p1, :cond_2

    .line 563
    return v0

    .line 565
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 566
    return v0

    .line 568
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;
    .locals 11
    .param p0, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p1, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "chatty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/BasePermission;",
            "Landroid/content/pm/PackageParser$Permission;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;Z)",
            "Lcom/android/server/pm/permission/BasePermission;"
        }
    .end annotation

    .line 331
    .local p3, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSettingBase;

    .line 333
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSettingBase;
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 334
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    .line 335
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    .line 336
    .local v3, "currentOwnerIsSystem":Z
    :goto_0
    iget-object v5, p1, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 337
    iget v5, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    if-ne v5, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-nez v4, :cond_1

    .line 339
    iput-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 340
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 341
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 342
    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 343
    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v5, v4, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr v5, v1

    iput v5, v4, Landroid/content/pm/PermissionInfo;->flags:I

    goto :goto_1

    .line 344
    :cond_1
    if-nez v3, :cond_2

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New decl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " of permission  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is system; overriding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 348
    const/4 p0, 0x0

    .line 352
    .end local v3    # "currentOwnerIsSystem":Z
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 353
    new-instance v3, Lcom/android/server/pm/permission/BasePermission;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object p0, v3

    .line 355
    :cond_3
    const/4 v2, 0x0

    .line 356
    .local v2, "r":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    const/16 v4, 0x100

    const/16 v5, 0x20

    const-string v6, "PackageManager"

    if-nez v3, :cond_a

    .line 357
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    const-string v7, " from package "

    const-string v8, "Permission "

    if-eqz v3, :cond_5

    iget-object v9, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 358
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 382
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: original from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 359
    :cond_5
    :goto_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {p3, v3}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 360
    .local v3, "tree":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_7

    iget-object v9, v3, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    iget-object v10, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 361
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    .line 376
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ignored: base tree "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is from package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 362
    :cond_7
    :goto_3
    iput-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 363
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 364
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 365
    iget-object v7, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 366
    iget-object v7, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v8, v7, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr v1, v8

    iput v1, v7, Landroid/content/pm/PermissionInfo;->flags:I

    .line 367
    if-eqz p4, :cond_9

    .line 368
    if-nez v2, :cond_8

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v1

    goto :goto_4

    .line 371
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    :goto_4
    iget-object v1, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .end local v3    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_9
    :goto_5
    goto :goto_7

    .line 386
    :cond_a
    if-eqz p4, :cond_c

    .line 387
    if-nez v2, :cond_b

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v1

    goto :goto_6

    .line 390
    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :goto_6
    const-string v1, "DUP:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne v1, p1, :cond_d

    .line 396
    iget-object v1, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 398
    :cond_d
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Permissions: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_e
    return-object p0
.end method

.method static enforcePermissionTree(Ljava/util/Collection;Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/pm/permission/BasePermission;"
        }
    .end annotation

    .line 406
    .local p0, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    if-eqz p1, :cond_1

    .line 407
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 408
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_1

    .line 409
    iget v1, v0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 410
    return-object v0

    .line 412
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed to add to permission tree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No permission tree found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/pm/permission/BasePermission;"
        }
    .end annotation

    .line 436
    .local p0, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/BasePermission;

    .line 437
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 439
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 440
    return-object v1

    .line 442
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_0
    goto :goto_0

    .line 443
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 518
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 521
    return p3

    .line 523
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 530
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method public static readLPw(Ljava/util/Map;Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")Z"
        }
    .end annotation

    .line 481
    .local p0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 483
    return v2

    .line 485
    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "sourcePackage":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "ptype":Ljava/lang/String;
    if-eqz v3, :cond_6

    if-nez v4, :cond_1

    goto :goto_1

    .line 494
    :cond_1
    const-string v6, "dynamic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 495
    .local v6, "dynamic":Z
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/BasePermission;

    .line 497
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    const/4 v8, 0x1

    if-eqz v7, :cond_2

    iget v9, v7, Lcom/android/server/pm/permission/BasePermission;->type:I

    if-eq v9, v8, :cond_4

    .line 498
    :cond_2
    new-instance v9, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 499
    if-eqz v6, :cond_3

    const/4 v11, 0x2

    goto :goto_0

    :cond_3
    move v11, v2

    :goto_0
    invoke-direct {v9, v10, v4, v11}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v9

    .line 501
    :cond_4
    const-string/jumbo v9, "protection"

    invoke-static {p1, v1, v9, v2}, Lcom/android/server/pm/permission/BasePermission;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 503
    iget v9, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 504
    if-eqz v6, :cond_5

    .line 505
    new-instance v9, Landroid/content/pm/PermissionInfo;

    invoke-direct {v9}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 506
    .local v9, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 507
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 508
    const-string v10, "icon"

    invoke-static {p1, v1, v10, v2}, Lcom/android/server/pm/permission/BasePermission;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v9, Landroid/content/pm/PermissionInfo;->icon:I

    .line 509
    const-string/jumbo v2, "label"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 510
    iget v1, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    iput v1, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 511
    iput-object v9, v7, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 513
    .end local v9    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_5
    iget-object v1, v7, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    return v8

    .line 489
    .end local v6    # "dynamic":Z
    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6
    :goto_1
    const/4 v1, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    invoke-static {v1, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 492
    return v2
.end method


# virtual methods
.method public addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z
    .locals 3
    .param p1, "protectionLevel"    # I
    .param p2, "info"    # Landroid/content/pm/PermissionInfo;
    .param p3, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 296
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iget v2, p3, Lcom/android/server/pm/permission/BasePermission;->uid:I

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 301
    invoke-static {v0, p2}, Lcom/android/server/pm/permission/BasePermission;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 302
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 303
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-direct {v1, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object p2, v1

    .line 304
    iput p1, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 305
    new-instance v1, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v2, p2}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 306
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 307
    iget v1, p3, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 308
    return v0
.end method

.method public calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 2
    .param p1, "perm"    # Lcom/android/server/pm/permission/BasePermission;

    .line 167
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iget v1, p1, Lcom/android/server/pm/permission/BasePermission;->uid:I

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public computeGids(I)[I
    .locals 4
    .param p1, "userId"    # I

    .line 155
    iget-boolean v0, p0, Lcom/android/server/pm/permission/BasePermission;->perUser:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 157
    .local v0, "userGids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 158
    aget v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    aput v2, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 162
    .end local v0    # "userGids":[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    return-object v0
.end method

.method public dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;ZZLcom/android/server/pm/DumpState;)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "readEnforced"    # Z
    .param p5, "printedSomething"    # Z
    .param p6, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/android/server/pm/DumpState;",
            ")Z"
        }
    .end annotation

    .line 590
    .local p3, "permissionNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    return v0

    .line 593
    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    return v0

    .line 596
    :cond_1
    if-nez p5, :cond_3

    .line 597
    invoke-virtual {p6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 599
    :cond_2
    const-string v1, "Permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const/4 p5, 0x1

    .line 602
    :cond_3
    const-string v1, "  Permission ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "] ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v1, "    sourcePackage="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string v1, "    uid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 607
    const-string v1, " gids="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    .line 607
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 610
    const-string v0, " prot="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-static {v0}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_5

    .line 613
    const-string v0, "    perm="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 616
    :cond_4
    const-string v0, "    flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-eqz v0, :cond_6

    .line 620
    const-string v0, "    packageSetting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 622
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 623
    const-string v0, "    enforced="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 626
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 421
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 422
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 423
    .local v1, "permsState":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 424
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has not requested permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 428
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 429
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requested by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a changeable permission type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_3
    :goto_1
    return-void
.end method

.method public generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .locals 3
    .param p1, "adjustedProtectionLevel"    # I
    .param p2, "flags"    # I

    .line 461
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_2

    .line 462
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 463
    .local v0, "protectionLevelChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v1, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 464
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-ne v1, v2, :cond_1

    .line 466
    new-instance v2, Landroid/content/pm/PermissionInfo;

    invoke-direct {v2, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object v1, v2

    .line 467
    iput p1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 469
    :cond_1
    return-object v1

    .line 471
    .end local v0    # "protectionLevelChanged":Z
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_2
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 472
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 473
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 474
    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 475
    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 476
    return-object v0
.end method

.method public generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 447
    if-nez p1, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 449
    :cond_0
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0

    .line 456
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectionLevel()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    return-object v0
.end method

.method public getSourceSignatures()[Landroid/content/pm/Signature;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSettingBase;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    return v0
.end method

.method public isAppOp()Z
    .locals 1

    .line 223
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppPredictor()Z
    .locals 2

    .line 277
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConfigurator()Z
    .locals 2

    .line 270
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDevelopment()Z
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDocumenter()Z
    .locals 2

    .line 267
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamic()Z
    .locals 2

    .line 178
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHardOrSoftRestricted()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHardRestricted()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImmutablyRestricted()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIncidentReportApprover()Z
    .locals 2

    .line 274
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstaller()Z
    .locals 1

    .line 230
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstant()Z
    .locals 1

    .line 233
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormal()Z
    .locals 1

    .line 183
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOEM()Z
    .locals 1

    .line 236
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPermission(Landroid/content/pm/PackageParser$Permission;)Z
    .locals 1
    .param p1, "perm"    # Landroid/content/pm/PackageParser$Permission;

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPre23()Z
    .locals 1

    .line 239
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreInstalled()Z
    .locals 1

    .line 242
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivileged()Z
    .locals 1

    .line 245
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRuntime()Z
    .locals 2

    .line 187
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRuntimeOnly()Z
    .locals 1

    .line 248
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetup()Z
    .locals 1

    .line 251
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignature()Z
    .locals 2

    .line 218
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSoftRestricted()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemTextClassifier()Z
    .locals 2

    .line 260
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVendorPrivileged()Z
    .locals 2

    .line 257
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerifier()Z
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWellbeing()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGids([IZ)V
    .locals 0
    .param p1, "gids"    # [I
    .param p2, "perUser"    # Z

    .line 144
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    .line 145
    iput-boolean p2, p0, Lcom/android/server/pm/permission/BasePermission;->perUser:Z

    .line 146
    return-void
.end method

.method public setPermission(Landroid/content/pm/PackageParser$Permission;)V
    .locals 0
    .param p1, "perm"    # Landroid/content/pm/PackageParser$Permission;

    .line 148
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 149
    return-void
.end method

.method public setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 0
    .param p1, "sourcePackageSetting"    # Lcom/android/server/pm/PackageSettingBase;

    .line 151
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasePermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transfer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "origPackageName"    # Ljava/lang/String;
    .param p2, "newPackageName"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iput-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 286
    iput-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 287
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v1, :cond_1

    .line 288
    iput-object p2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 290
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 291
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 292
    return-void
.end method

.method public updateDynamicPermission(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p1, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dynamic permission: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 317
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_1

    .line 318
    iget-object v2, v0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    iput-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 319
    new-instance v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v3, Landroid/content/pm/PermissionInfo;

    iget-object v4, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v2, v1, v3}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 321
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 323
    iget v1, v0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 326
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    return-void
.end method

.method public writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 535
    return-void

    .line 537
    :cond_0
    const-string/jumbo v0, "item"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    iget v2, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-eqz v2, :cond_1

    .line 541
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "protection"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    :cond_1
    iget v2, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 544
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 545
    .local v2, "pi":Landroid/content/pm/PermissionInfo;
    :goto_0
    if-eqz v2, :cond_4

    .line 546
    const-string/jumbo v3, "type"

    const-string v4, "dynamic"

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    iget v3, v2, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v3, :cond_3

    .line 548
    iget v3, v2, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "icon"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    :cond_3
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 551
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "label"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    .end local v2    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_4
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    return-void
.end method
