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

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 109
    iput p3, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 112
    return-void
.end method

.method private static comparePermissionInfos(Landroid/content/pm/parsing/component/ParsedPermission;Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .param p0, "pi1"    # Landroid/content/pm/parsing/component/ParsedPermission;
    .param p1, "pi2"    # Landroid/content/pm/PermissionInfo;

    .line 578
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getIcon()I

    move-result v0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 579
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getLogo()I

    move-result v0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_1

    return v2

    .line 580
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_2

    return v2

    .line 581
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 582
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 584
    :cond_4
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 590
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private static compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;

    .line 565
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 566
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 568
    :cond_1
    if-nez p1, :cond_2

    .line 569
    return v0

    .line 571
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 572
    return v0

    .line 574
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

    .line 322
    .local p4, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 323
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 325
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSettingBase;
    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    iget-object v5, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 327
    iget-object v5, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-nez v5, :cond_0

    .line 328
    const/4 v5, 0x0

    .local v5, "currentOwnerIsSystem":Z
    goto :goto_0

    .line 330
    .end local v5    # "currentOwnerIsSystem":Z
    :cond_0
    nop

    .line 331
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 330
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 332
    .local v5, "currentPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v5, :cond_1

    .line 333
    const/4 v6, 0x0

    move v5, v6

    .local v6, "currentOwnerIsSystem":Z
    goto :goto_0

    .line 335
    .end local v6    # "currentOwnerIsSystem":Z
    :cond_1
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v6

    move v5, v6

    .line 339
    .local v5, "currentOwnerIsSystem":Z
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 340
    iget v6, v1, Lcom/android/server/pm/permission/BasePermission;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-nez v6, :cond_2

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v6

    or-int/2addr v6, v4

    invoke-virtual {v2, v6}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 343
    iput-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 344
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v6

    iput v6, v1, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    move-object/from16 v7, p3

    goto :goto_1

    .line 346
    :cond_2
    if-nez v5, :cond_3

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New decl "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " of permission  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is system; overriding "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "msg":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 350
    const/4 v1, 0x0

    .end local p1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_1

    .line 346
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "msg":Ljava/lang/String;
    .restart local p1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_3
    move-object/from16 v7, p3

    goto :goto_1

    .line 339
    :cond_4
    move-object/from16 v7, p3

    goto :goto_1

    .line 325
    .end local v5    # "currentOwnerIsSystem":Z
    :cond_5
    move-object/from16 v7, p3

    .line 354
    .end local p1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1
    if-nez v1, :cond_6

    .line 355
    new-instance v5, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v8, v9}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v5

    .line 357
    :cond_6
    const/4 v5, 0x0

    .line 358
    .local v5, "r":Ljava/lang/StringBuilder;
    iget-object v6, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    const/16 v8, 0x100

    const/16 v9, 0x20

    const-string v10, "PackageManager"

    if-nez v6, :cond_d

    .line 359
    iget-object v6, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    const-string v11, " from package "

    const-string v12, "Permission "

    if-eqz v6, :cond_8

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 383
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ignored: original from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, p4

    goto/16 :goto_7

    .line 361
    :cond_8
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v13, p4

    invoke-static {v13, v6}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 362
    .local v6, "tree":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v6, :cond_a

    iget-object v14, v6, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_3

    .line 377
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ignored: base tree "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is from package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 364
    :cond_a
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v2, v4}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 365
    iput-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 366
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v4

    iput v4, v1, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 368
    if-eqz p5, :cond_c

    .line 369
    if-nez v5, :cond_b

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    goto :goto_4

    .line 372
    :cond_b
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .end local v6    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_c
    :goto_5
    goto :goto_7

    .line 387
    :cond_d
    move-object/from16 v13, p4

    if-eqz p5, :cond_f

    .line 388
    if-nez v5, :cond_e

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    goto :goto_6

    .line 391
    :cond_e
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    :goto_6
    const-string v4, "DUP:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_f
    :goto_7
    iget-object v4, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 397
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v4

    iput v4, v1, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 400
    :cond_10
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_11

    if-eqz v5, :cond_11

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Permissions: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_11
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

    .line 408
    .local p0, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    if-eqz p1, :cond_1

    .line 409
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 410
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_1

    .line 411
    iget v1, v0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 412
    return-object v0

    .line 414
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

    .line 419
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

    .line 438
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

    .line 439
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 441
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 442
    return-object v1

    .line 444
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_0
    goto :goto_0

    .line 445
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

    .line 520
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 523
    return p3

    .line 525
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 526
    :catch_0
    move-exception v1

    .line 527
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

    .line 530
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 532
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

    .line 483
    .local p0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 485
    return v2

    .line 487
    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "sourcePackage":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "ptype":Ljava/lang/String;
    if-eqz v3, :cond_6

    if-nez v4, :cond_1

    goto :goto_1

    .line 496
    :cond_1
    const-string v6, "dynamic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 497
    .local v6, "dynamic":Z
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/BasePermission;

    .line 499
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    const/4 v8, 0x1

    if-eqz v7, :cond_2

    iget v9, v7, Lcom/android/server/pm/permission/BasePermission;->type:I

    if-eq v9, v8, :cond_4

    .line 500
    :cond_2
    new-instance v9, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 501
    if-eqz v6, :cond_3

    const/4 v11, 0x2

    goto :goto_0

    :cond_3
    move v11, v2

    :goto_0
    invoke-direct {v9, v10, v4, v11}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v9

    .line 503
    :cond_4
    const-string/jumbo v9, "protection"

    invoke-static {p1, v1, v9, v2}, Lcom/android/server/pm/permission/BasePermission;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 505
    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 506
    if-eqz v6, :cond_5

    .line 507
    new-instance v9, Landroid/content/pm/PermissionInfo;

    invoke-direct {v9}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 508
    .local v9, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 509
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 510
    const-string v10, "icon"

    invoke-static {p1, v1, v10, v2}, Lcom/android/server/pm/permission/BasePermission;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v9, Landroid/content/pm/PermissionInfo;->icon:I

    .line 511
    const-string/jumbo v2, "label"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 512
    iget v1, v7, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    iput v1, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 513
    iput-object v9, v7, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 515
    .end local v9    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_5
    iget-object v1, v7, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    return v8

    .line 491
    .end local v6    # "dynamic":Z
    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6
    :goto_1
    const/4 v1, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-static {v1, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 494
    return v2
.end method


# virtual methods
.method public addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z
    .locals 3
    .param p1, "protectionLevel"    # I
    .param p2, "info"    # Landroid/content/pm/PermissionInfo;
    .param p3, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 290
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iget v2, p3, Lcom/android/server/pm/permission/BasePermission;->uid:I

    if-ne v1, v2, :cond_1

    .line 294
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 295
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

    .line 296
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 297
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-direct {v1, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object p2, v1

    .line 298
    iput p1, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 299
    new-instance v1, Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v2, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-direct {v1, v2}, Landroid/content/pm/parsing/component/ParsedPermission;-><init>(Landroid/content/pm/parsing/component/ParsedPermission;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 300
    iget v1, p3, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 301
    return v0
.end method

.method public calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 2
    .param p1, "perm"    # Lcom/android/server/pm/permission/BasePermission;

    .line 156
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iget v1, p1, Lcom/android/server/pm/permission/BasePermission;->uid:I

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->calculateFootprint()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public computeGids(I)[I
    .locals 4
    .param p1, "userId"    # I

    .line 144
    iget-boolean v0, p0, Lcom/android/server/pm/permission/BasePermission;->perUser:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 146
    .local v0, "userGids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 147
    aget v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    aput v2, v0, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 151
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

    .line 596
    .local p3, "permissionNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    return v0

    .line 599
    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 600
    return v0

    .line 602
    :cond_1
    if-nez p5, :cond_3

    .line 603
    invoke-virtual {p6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 605
    :cond_2
    const-string v1, "Permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const/4 p5, 0x1

    .line 608
    :cond_3
    const-string v1, "  Permission ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "] ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const-string v1, "    sourcePackage="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const-string v1, "    uid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 613
    const-string v1, " gids="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    .line 613
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 616
    const-string v0, " prot="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-static {v0}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_5

    .line 619
    const-string v0, "    perm="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 620
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 621
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 622
    :cond_4
    const-string v0, "    flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 626
    const-string v0, "    enforced="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 629
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public enforceDeclaredUsedAndRuntimeOrDevelopment(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 424
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 425
    .local v0, "permsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 426
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 427
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

    .line 430
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 431
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

    .line 432
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a changeable permission type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_3
    :goto_1
    return-void
.end method

.method public generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .locals 3
    .param p1, "adjustedProtectionLevel"    # I
    .param p2, "flags"    # I

    .line 463
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_2

    .line 464
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 465
    .local v0, "protectionLevelChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-static {v1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 466
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v0, :cond_1

    .line 468
    new-instance v2, Landroid/content/pm/PermissionInfo;

    invoke-direct {v2, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object v1, v2

    .line 469
    iput p1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 471
    :cond_1
    return-object v1

    .line 473
    .end local v0    # "protectionLevelChanged":Z
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_2
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 474
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 477
    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 478
    return-object v0
.end method

.method public generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 449
    if-nez p1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 451
    :cond_0
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-static {v0, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0

    .line 458
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectionLevel()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    return v0
.end method

.method public isAppOp()Z
    .locals 1

    .line 211
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

    .line 265
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

    .line 268
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

    .line 258
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

    .line 214
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

    .line 255
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

    .line 171
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

    .line 197
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

    .line 193
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

    .line 202
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

    .line 262
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

    .line 218
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

    .line 221
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

    .line 176
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

    .line 224
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

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 166
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 167
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

    .line 166
    :goto_0
    return v1
.end method

.method public isPre23()Z
    .locals 1

    .line 227
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

    .line 230
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

    .line 233
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

    .line 185
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

    .line 272
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

    .line 180
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

    .line 236
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

    .line 239
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

    .line 206
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

    .line 189
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

    .line 248
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

    .line 245
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

    .line 242
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

    .line 252
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

    .line 136
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    .line 137
    iput-boolean p2, p0, Lcom/android/server/pm/permission/BasePermission;->perUser:Z

    .line 138
    return-void
.end method

.method public setPermission(Landroid/content/pm/parsing/component/ParsedPermission;)V
    .locals 0
    .param p1, "perm"    # Landroid/content/pm/parsing/component/ParsedPermission;

    .line 140
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
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

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iput-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 281
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v1, :cond_1

    .line 282
    iput-object p2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 284
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 285
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 286
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

    .line 305
    .local p1, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/BasePermission;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dynamic permission: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
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

    .line 305
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 310
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v1, :cond_1

    .line 311
    new-instance v1, Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v2, v0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 312
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/pm/parsing/component/ParsedPermission;-><init>(Landroid/content/pm/parsing/component/ParsedPermission;Landroid/content/pm/PermissionInfo;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 313
    iget v1, v0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iput v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 316
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

    .line 536
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 541
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    iget v2, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-eqz v2, :cond_1

    .line 543
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "protection"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    :cond_1
    iget v2, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 546
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v2, :cond_6

    .line 547
    :cond_2
    const-string/jumbo v2, "type"

    const-string v3, "dynamic"

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 548
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getIcon()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->icon:I

    .line 549
    .local v2, "icon":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v3, :cond_4

    .line 550
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 551
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_1
    nop

    .line 553
    .local v3, "nonLocalizedLabel":Ljava/lang/CharSequence;
    if-eqz v2, :cond_5

    .line 554
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    :cond_5
    if-eqz v3, :cond_6

    .line 557
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "label"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    .end local v2    # "icon":I
    .end local v3    # "nonLocalizedLabel":Ljava/lang/CharSequence;
    :cond_6
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    return-void
.end method
