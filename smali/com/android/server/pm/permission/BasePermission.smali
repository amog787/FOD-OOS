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

.field private mPermissionDefinitionChanged:Z

.field final name:Ljava/lang/String;

.field pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

.field private perUser:Z

.field perm:Landroid/content/pm/parsing/component/ParsedPermission;

.field protectionLevel:I

.field sourcePackageName:Ljava/lang/String;

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

.method private static comparePermissionInfos(Landroid/content/pm/parsing/component/ParsedPermission;Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .param p0, "pi1"    # Landroid/content/pm/parsing/component/ParsedPermission;
    .param p1, "pi2"    # Landroid/content/pm/PermissionInfo;

    .line 597
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getIcon()I

    move-result v0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 598
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getLogo()I

    move-result v0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_1

    return v2

    .line 599
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_2

    return v2

    .line 600
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 601
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 603
    :cond_4
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 609
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private static compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;

    .line 584
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 585
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 587
    :cond_1
    if-nez p1, :cond_2

    .line 588
    return v0

    .line 590
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 591
    return v0

    .line 593
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static createOrUpdate(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/parsing/component/ParsedPermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;
    .locals 16
    .param p0, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "p"    # Landroid/content/pm/parsing/component/ParsedPermission;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "chatty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            "Lcom/android/server/pm/permission/BasePermission;",
            "Landroid/content/pm/parsing/component/ParsedPermission;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;Z)",
            "Lcom/android/server/pm/permission/BasePermission;"
        }
    .end annotation

    .line 333
    .local p4, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 334
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 336
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSettingBase;
    const/4 v4, 0x0

    .line 337
    .local v4, "ownerChanged":Z
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    iget-object v7, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 339
    iget-object v7, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-nez v7, :cond_0

    .line 340
    const/4 v7, 0x0

    .local v7, "currentOwnerIsSystem":Z
    goto :goto_0

    .line 342
    .end local v7    # "currentOwnerIsSystem":Z
    :cond_0
    nop

    .line 343
    invoke-virtual {v7}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 342
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 344
    .local v7, "currentPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v7, :cond_1

    .line 345
    const/4 v8, 0x0

    move v7, v8

    .local v8, "currentOwnerIsSystem":Z
    goto :goto_0

    .line 347
    .end local v8    # "currentOwnerIsSystem":Z
    :cond_1
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v8

    move v7, v8

    .line 351
    .local v7, "currentOwnerIsSystem":Z
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 352
    iget v8, v1, Lcom/android/server/pm/permission/BasePermission;->type:I

    if-ne v8, v6, :cond_2

    iget-object v8, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-nez v8, :cond_2

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v8

    or-int/2addr v8, v5

    invoke-virtual {v2, v8}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 355
    iput-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 356
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v8

    iput v8, v1, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    move-object/from16 v9, p3

    goto :goto_1

    .line 358
    :cond_2
    if-nez v7, :cond_3

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New decl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " of permission  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is system; overriding "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, "msg":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-static {v10, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 362
    const/4 v4, 0x1

    .line 363
    const/4 v1, 0x0

    .end local p1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_1

    .line 358
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v8    # "msg":Ljava/lang/String;
    .restart local p1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_3
    move-object/from16 v9, p3

    goto :goto_1

    .line 351
    :cond_4
    move-object/from16 v9, p3

    goto :goto_1

    .line 337
    .end local v7    # "currentOwnerIsSystem":Z
    :cond_5
    move-object/from16 v9, p3

    .line 367
    .end local p1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1
    if-nez v1, :cond_6

    .line 368
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v10, v11}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v7

    .line 370
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v7

    xor-int/2addr v7, v6

    .line 371
    .local v7, "wasNonRuntime":Z
    const/4 v8, 0x0

    .line 372
    .local v8, "r":Ljava/lang/StringBuilder;
    iget-object v10, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    const-string v13, "PackageManager"

    if-nez v10, :cond_d

    .line 373
    iget-object v10, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    const-string v14, " from package "

    const-string v15, "Permission "

    if-eqz v10, :cond_8

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 397
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ignored: original from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p4

    goto/16 :goto_7

    .line 375
    :cond_8
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, p4

    invoke-static {v10, v6}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 376
    .local v6, "tree":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v6, :cond_a

    iget-object v12, v6, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    .line 391
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ignored: base tree "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is from package "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 378
    :cond_a
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v11

    or-int/2addr v5, v11

    invoke-virtual {v2, v5}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 379
    iput-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 380
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    iput v5, v1, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 382
    if-eqz p5, :cond_c

    .line 383
    if-nez v8, :cond_b

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v11, 0x100

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v5

    goto :goto_4

    .line 386
    :cond_b
    const/16 v5, 0x20

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .end local v6    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_c
    :goto_5
    goto :goto_7

    .line 401
    :cond_d
    move-object/from16 v10, p4

    if-eqz p5, :cond_f

    .line 402
    if-nez v8, :cond_e

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v5

    goto :goto_6

    .line 405
    :cond_e
    const/16 v5, 0x20

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    :goto_6
    const-string v5, "DUP:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_f
    :goto_7
    iget-object v5, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 411
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v5

    iput v5, v1, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 414
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v4, :cond_11

    if-eqz v7, :cond_12

    .line 417
    :cond_11
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/pm/permission/BasePermission;->mPermissionDefinitionChanged:Z

    .line 419
    :cond_12
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v5, :cond_13

    if-eqz v8, :cond_13

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Permissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_13
    return-object v1
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

    .line 427
    .local p0, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    if-eqz p1, :cond_1

    .line 428
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 429
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_1

    .line 430
    iget v1, v0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 431
    return-object v0

    .line 433
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

    .line 438
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

    .line 457
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

    .line 458
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 460
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 461
    return-object v1

    .line 463
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_0
    goto :goto_0

    .line 464
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

    .line 539
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 542
    return p3

    .line 544
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 545
    :catch_0
    move-exception v1

    .line 546
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

    .line 549
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 551
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

    .line 502
    .local p0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 504
    return v2

    .line 506
    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "sourcePackage":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "ptype":Ljava/lang/String;
    if-eqz v3, :cond_6

    if-nez v4, :cond_1

    goto :goto_1

    .line 515
    :cond_1
    const-string v6, "dynamic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 516
    .local v6, "dynamic":Z
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/BasePermission;

    .line 518
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    const/4 v8, 0x1

    if-eqz v7, :cond_2

    iget v9, v7, Lcom/android/server/pm/permission/BasePermission;->type:I

    if-eq v9, v8, :cond_4

    .line 519
    :cond_2
    new-instance v9, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 520
    if-eqz v6, :cond_3

    const/4 v11, 0x2

    goto :goto_0

    :cond_3
    move v11, v2

    :goto_0
    invoke-direct {v9, v10, v4, v11}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v9

    .line 522
    :cond_4
    const-string/jumbo v9, "protection"

    invoke-static {p1, v1, v9, v2}, Lcom/android/server/pm/permission/BasePermission;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 524
    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 525
    if-eqz v6, :cond_5

    .line 526
    new-instance v9, Landroid/content/pm/PermissionInfo;

    invoke-direct {v9}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 527
    .local v9, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 528
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 529
    const-string v10, "icon"

    invoke-static {p1, v1, v10, v2}, Lcom/android/server/pm/permission/BasePermission;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v9, Landroid/content/pm/PermissionInfo;->icon:I

    .line 530
    const-string/jumbo v2, "label"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 531
    iget v1, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    iput v1, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 532
    iput-object v9, v7, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 534
    .end local v9    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_5
    iget-object v1, v7, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    return v8

    .line 510
    .end local v6    # "dynamic":Z
    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6
    :goto_1
    const/4 v1, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 510
    invoke-static {v1, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 513
    return v2
.end method


# virtual methods
.method public addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z
    .locals 3
    .param p1, "protectionLevel"    # I
    .param p2, "info"    # Landroid/content/pm/PermissionInfo;
    .param p3, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 301
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iget v2, p3, Lcom/android/server/pm/permission/BasePermission;->uid:I

    if-ne v1, v2, :cond_1

    .line 305
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 306
    invoke-static {v0, p2}, Lcom/android/server/pm/permission/BasePermission;->comparePermissionInfos(Landroid/content/pm/parsing/component/ParsedPermission;Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 307
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 308
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-direct {v1, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object p2, v1

    .line 309
    iput p1, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 310
    new-instance v1, Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v2, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-direct {v1, v2}, Landroid/content/pm/parsing/component/ParsedPermission;-><init>(Landroid/content/pm/parsing/component/ParsedPermission;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 311
    iget v1, p3, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 312
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

    iget-object v1, p1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->calculateFootprint()I

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

    .line 615
    .local p3, "permissionNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    return v0

    .line 618
    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 619
    return v0

    .line 621
    :cond_1
    if-nez p5, :cond_3

    .line 622
    invoke-virtual {p6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 624
    :cond_2
    const-string v1, "Permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    const/4 p5, 0x1

    .line 627
    :cond_3
    const-string v1, "  Permission ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "] ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    const-string v1, "    sourcePackage="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    const-string v1, "    uid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 632
    const-string v1, " gids="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    .line 632
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 635
    const-string v0, " prot="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-static {v0}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_5

    .line 638
    const-string v0, "    perm="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 640
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 641
    :cond_4
    const-string v0, "    flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 645
    const-string v0, "    enforced="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 648
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public enforceDeclaredUsedAndRuntimeOrDevelopment(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 443
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 444
    .local v0, "permsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 445
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has not requested permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 450
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a changeable permission type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :cond_3
    :goto_1
    return-void
.end method

.method public generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .locals 3
    .param p1, "adjustedProtectionLevel"    # I
    .param p2, "flags"    # I

    .line 482
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_2

    .line 483
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 484
    .local v0, "protectionLevelChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-static {v1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 485
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v0, :cond_1

    .line 487
    new-instance v2, Landroid/content/pm/PermissionInfo;

    invoke-direct {v2, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object v1, v2

    .line 488
    iput p1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 490
    :cond_1
    return-object v1

    .line 492
    .end local v0    # "protectionLevelChanged":Z
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_2
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 493
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 494
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 496
    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 497
    return-object v0
.end method

.method public generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 468
    if-nez p1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 470
    :cond_0
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-static {v0, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0

    .line 477
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

.method public getType()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    return v0
.end method

.method public isAppOp()Z
    .locals 1

    .line 222
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

    .line 276
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

.method public isCompanion()Z
    .locals 2

    .line 279
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x800000

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

    .line 269
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

    .line 225
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

    .line 266
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

    .line 182
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

    .line 208
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

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

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

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
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

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

    .line 273
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

    .line 229
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

    .line 232
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

    .line 187
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

    .line 235
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

.method public isPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Z
    .locals 3
    .param p1, "perm"    # Landroid/content/pm/parsing/component/ParsedPermission;

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    return v1

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 178
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 177
    :goto_0
    return v1
.end method

.method public isPermissionDefinitionChanged()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/android/server/pm/permission/BasePermission;->mPermissionDefinitionChanged:Z

    return v0
.end method

.method public isPre23()Z
    .locals 1

    .line 238
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

    .line 241
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

    .line 244
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

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRetailDemo()Z
    .locals 2

    .line 283
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

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

    .line 191
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

    .line 247
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

    .line 250
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

    .line 217
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

    .line 200
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

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

    .line 259
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

    .line 256
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

    .line 253
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

    .line 263
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

    .line 143
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    .line 144
    iput-boolean p2, p0, Lcom/android/server/pm/permission/BasePermission;->perUser:Z

    .line 145
    return-void
.end method

.method public setPermission(Landroid/content/pm/parsing/component/ParsedPermission;)V
    .locals 0
    .param p1, "perm"    # Landroid/content/pm/parsing/component/ParsedPermission;

    .line 147
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 148
    return-void
.end method

.method public setPermissionDefinitionChanged(Z)V
    .locals 0
    .param p1, "shouldOverride"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/server/pm/permission/BasePermission;->mPermissionDefinitionChanged:Z

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

    .line 287
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    iput-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 292
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v1, :cond_1

    .line 293
    iput-object p2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 295
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 296
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 297
    return-void
.end method

.method public updateDynamicPermission(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p1, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dynamic permission: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
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

    .line 316
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 321
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v1, :cond_1

    .line 322
    new-instance v1, Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v2, v0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 323
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/pm/parsing/component/ParsedPermission;-><init>(Landroid/content/pm/parsing/component/ParsedPermission;Landroid/content/pm/PermissionInfo;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 324
    iget v1, v0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 327
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    return-void
.end method

.method public writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 560
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    iget v2, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-eqz v2, :cond_1

    .line 562
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "protection"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    :cond_1
    iget v2, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 565
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v2, :cond_6

    .line 566
    :cond_2
    const-string/jumbo v2, "type"

    const-string v3, "dynamic"

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getIcon()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->icon:I

    .line 568
    .local v2, "icon":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v3, :cond_4

    .line 569
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 570
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_1
    nop

    .line 572
    .local v3, "nonLocalizedLabel":Ljava/lang/CharSequence;
    if-eqz v2, :cond_5

    .line 573
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    :cond_5
    if-eqz v3, :cond_6

    .line 576
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "label"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    .end local v2    # "icon":I
    .end local v3    # "nonLocalizedLabel":Ljava/lang/CharSequence;
    :cond_6
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 581
    return-void
.end method
