.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriGrantsManagerService$LocalService;,
        Lcom/android/server/uri/UriGrantsManagerService$H;,
        Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field private static final ATTR_MODE_FLAGS:Ljava/lang/String; = "modeFlags"

.field private static final ATTR_PREFIX:Ljava/lang/String; = "prefix"

.field private static final ATTR_SOURCE_PKG:Ljava/lang/String; = "sourcePkg"

.field private static final ATTR_SOURCE_USER_ID:Ljava/lang/String; = "sourceUserId"

.field private static final ATTR_TARGET_PKG:Ljava/lang/String; = "targetPkg"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final DEBUG:Z = false

.field private static final ENABLE_DYNAMIC_PERMISSIONS:Z = false

.field private static final MAX_PERSISTED_URI_GRANTS:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UriGrantsManagerService"

.field private static final TAG_URI_GRANT:Ljava/lang/String; = "uri-grant"

.field private static final TAG_URI_GRANTS:Ljava/lang/String; = "uri-grants"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mGrantFile:Landroid/util/AtomicFile;

.field private final mGrantedUriPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/uri/GrantUri;",
            "Lcom/android/server/uri/UriPermission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field private final mLock:Ljava/lang/Object;

.field mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 155
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/uri/UriGrantsManagerService$1;

    .line 116
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "systemDir"    # Ljava/io/File;

    .line 158
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 160
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "urigrants.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "uri-grants"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 161
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "x6"    # I

    .line 116
    invoke-direct/range {p0 .. p6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "x2"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/pm/ProviderInfo;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissionsLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/UriPermission;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/uri/GrantUri;
    .param p4, "x4"    # I

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/GrantUri;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/Uri;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 116
    invoke-direct/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method private checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"    # I
    .param p4, "checkUser"    # Z

    .line 515
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v2, "UriGrantsManagerService"

    invoke-static {v2, v0, v1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 517
    return v1

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 521
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 523
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/GrantUri;

    .line 524
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v4, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v4, p3, :cond_1

    if-nez p4, :cond_2

    .line 525
    :cond_1
    iget-object v4, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 526
    return v1

    .line 522
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 531
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 19
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "mode"    # I
    .param p5, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "targetUserId"    # I

    .line 593
    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v6, p5

    if-eqz v7, :cond_e

    .line 597
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 598
    return-object v0

    .line 600
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 601
    .local v9, "data":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    .line 602
    .local v10, "clip":Landroid/content/ClipData;
    if-nez v9, :cond_1

    if-nez v10, :cond_1

    .line 603
    return-object v0

    .line 606
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v1

    .line 607
    .local v1, "contentUserHint":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 608
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move v11, v1

    goto :goto_0

    .line 607
    :cond_2
    move v11, v1

    .line 611
    .end local v1    # "contentUserHint":I
    .local v11, "contentUserHint":I
    :goto_0
    if-eqz v6, :cond_3

    .line 612
    iget v0, v6, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move-object/from16 v12, p0

    move/from16 v13, p6

    move v14, v0

    .local v0, "targetUid":I
    goto :goto_1

    .line 614
    .end local v0    # "targetUid":I
    :cond_3
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x10000000

    move/from16 v13, p6

    invoke-virtual {v1, v7, v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v1

    .line 616
    .local v1, "targetUid":I
    if-gez v1, :cond_4

    .line 619
    return-object v0

    .line 616
    :cond_4
    move v14, v1

    .line 622
    .end local v1    # "targetUid":I
    .local v14, "targetUid":I
    :goto_1
    if-eqz v9, :cond_6

    .line 623
    invoke-static {v11, v9, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v15

    .line 624
    .local v15, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    move/from16 v4, p4

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v14

    .line 626
    if-lez v14, :cond_6

    .line 627
    if-nez v6, :cond_5

    .line 628
    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v7, v14, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "needed":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_2

    .line 627
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_5
    move-object v0, v6

    .line 630
    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_2
    iget-object v1, v0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    .line 633
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v15    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v6, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_6
    if-eqz v10, :cond_d

    .line 634
    const/4 v0, 0x0

    move-object v15, v6

    move/from16 v16, v14

    move v14, v0

    .end local v6    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v14, "i":I
    .local v15, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v16, "targetUid":I
    :goto_3
    invoke-virtual {v10}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v14, v0, :cond_c

    .line 635
    invoke-virtual {v10, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 636
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_9

    .line 637
    invoke-static {v11, v6, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v5

    .line 638
    .local v5, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, p4

    move-object/from16 p5, v6

    move-object v6, v5

    .end local v5    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v6, "grantUri":Lcom/android/server/uri/GrantUri;
    .local p5, "uri":Landroid/net/Uri;
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 640
    .end local v16    # "targetUid":I
    .local v0, "targetUid":I
    if-lez v0, :cond_8

    .line 641
    if-nez v15, :cond_7

    .line 642
    new-instance v1, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v1, v7, v0, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    move-object v15, v1

    .line 644
    :cond_7
    iget-object v1, v15, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v6    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_8
    move/from16 v16, v0

    goto :goto_4

    .line 647
    .end local v0    # "targetUid":I
    .end local p5    # "uri":Landroid/net/Uri;
    .local v6, "uri":Landroid/net/Uri;
    .restart local v16    # "targetUid":I
    :cond_9
    move-object/from16 p5, v6

    .end local v6    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    invoke-virtual {v10, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 648
    .local v17, "clipIntent":Landroid/content/Intent;
    if-eqz v17, :cond_a

    .line 649
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v4, p4

    move-object v5, v15

    move-object/from16 v18, p5

    .end local p5    # "uri":Landroid/net/Uri;
    .local v18, "uri":Landroid/net/Uri;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    .line 651
    .local v0, "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    if-eqz v0, :cond_b

    .line 652
    move-object v15, v0

    goto :goto_4

    .line 648
    .end local v0    # "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v18, p5

    .line 634
    .end local v17    # "clipIntent":Landroid/content/Intent;
    .end local p5    # "uri":Landroid/net/Uri;
    :cond_b
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_c
    move-object v6, v15

    move/from16 v14, v16

    .line 659
    .end local v15    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v16    # "targetUid":I
    .local v6, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v14, "targetUid":I
    :cond_d
    return-object v6

    .line 594
    .end local v6    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v9    # "data":Landroid/net/Uri;
    .end local v10    # "clip":Landroid/content/ClipData;
    .end local v11    # "contentUserHint":I
    .end local v14    # "targetUid":I
    .local p5, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_e
    move-object/from16 v12, p0

    move/from16 v13, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1278
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p5, p3, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    return v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .locals 21
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "lastTargetUid"    # I

    .line 1079
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1080
    return v1

    .line 1083
    :cond_0
    nop

    .line 1088
    iget-object v0, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1090
    return v1

    .line 1095
    :cond_1
    const/4 v0, 0x0

    .line 1100
    .local v0, "allowForceGrantPersistableUriPermission":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 1101
    .local v12, "callingAppId":I
    const/16 v2, 0x3e8

    if-eq v12, v2, :cond_2

    if-nez v12, :cond_5

    .line 1102
    :cond_2
    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.files"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1103
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.module_licenses"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1112
    :cond_3
    const/high16 v2, -0x80000000

    and-int/2addr v2, v11

    if-eqz v2, :cond_4

    .line 1113
    const-string v2, "UriGrantsManagerService"

    const-string v3, "Allow FM to grant permission"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v0, 0x1

    move v13, v0

    goto :goto_1

    .line 1117
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; use startActivityAsCaller() instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UriGrantsManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return v1

    .line 1123
    :cond_5
    :goto_0
    move v13, v0

    .end local v0    # "allowForceGrantPersistableUriPermission":Z
    .local v13, "allowForceGrantPersistableUriPermission":Z
    :goto_1
    iget-object v0, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    .line 1124
    .local v14, "authority":Ljava/lang/String;
    iget v0, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {v7, v14, v0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v15

    .line 1126
    .local v15, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v15, :cond_6

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No content provider found for permission check: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1128
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    const-string v2, "UriGrantsManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return v1

    .line 1132
    :cond_6
    move/from16 v0, p5

    .line 1133
    .local v0, "targetUid":I
    if-gez v0, :cond_8

    if-eqz v9, :cond_8

    .line 1134
    iget-object v3, v7, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1135
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1134
    invoke-virtual {v3, v9, v2, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v0

    .line 1136
    if-gez v0, :cond_7

    .line 1138
    return v1

    .line 1136
    :cond_7
    move v6, v0

    goto :goto_2

    .line 1142
    :cond_8
    move v6, v0

    .end local v0    # "targetUid":I
    .local v6, "targetUid":I
    :goto_2
    const/4 v0, 0x0

    .line 1143
    .local v0, "targetHoldsPermission":Z
    if-ltz v6, :cond_9

    .line 1145
    invoke-direct {v7, v15, v10, v6, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1149
    const/4 v0, 0x1

    goto :goto_5

    .line 1153
    :cond_9
    iget-boolean v2, v15, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1154
    .local v2, "allowed":Z
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_a

    .line 1155
    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1156
    const/4 v2, 0x0

    .line 1159
    :cond_a
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_b

    .line 1160
    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 1161
    const/4 v2, 0x0

    .line 1164
    :cond_b
    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v3, :cond_e

    .line 1165
    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v3, v3

    .line 1166
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_e

    .line 1167
    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    if-eqz v5, :cond_d

    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    iget-object v1, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1168
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1169
    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_c

    .line 1170
    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1171
    const/4 v2, 0x0

    .line 1174
    :cond_c
    and-int/lit8 v1, v11, 0x2

    if-eqz v1, :cond_e

    .line 1175
    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1176
    const/4 v2, 0x0

    goto :goto_4

    .line 1166
    :cond_d
    add-int/lit8 v4, v4, 0x1

    const/4 v1, -0x1

    goto :goto_3

    .line 1183
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    .line 1184
    const/4 v0, 0x1

    .line 1188
    .end local v2    # "allowed":Z
    :cond_f
    :goto_5
    iget-boolean v1, v15, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v1, :cond_10

    .line 1192
    const/4 v0, 0x0

    move/from16 v17, v0

    goto :goto_6

    .line 1188
    :cond_10
    move/from16 v17, v0

    .line 1195
    .end local v0    # "targetHoldsPermission":Z
    .local v17, "targetHoldsPermission":Z
    :goto_6
    and-int/lit16 v0, v11, 0xc0

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-nez v0, :cond_11

    move/from16 v0, v19

    goto :goto_7

    :cond_11
    move/from16 v0, v18

    :goto_7
    move/from16 v20, v0

    .line 1197
    .local v20, "basicGrant":Z
    if-eqz v20, :cond_12

    if-eqz v17, :cond_12

    .line 1202
    iget-object v0, v7, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1203
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1204
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v4, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    .line 1202
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1205
    const/4 v0, -0x1

    return v0

    .line 1214
    :cond_12
    if-ltz v6, :cond_14

    .line 1215
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_13

    const/4 v0, 0x0

    .line 1216
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p4

    move/from16 v16, v6

    .end local v6    # "targetUid":I
    .local v16, "targetUid":I
    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    if-eqz v0, :cond_15

    move/from16 v18, v19

    goto :goto_9

    .line 1215
    .end local v16    # "targetUid":I
    .restart local v6    # "targetUid":I
    :cond_13
    move/from16 v16, v6

    .end local v6    # "targetUid":I
    .restart local v16    # "targetUid":I
    goto :goto_8

    .line 1214
    .end local v16    # "targetUid":I
    .restart local v6    # "targetUid":I
    :cond_14
    move/from16 v16, v6

    .line 1216
    .end local v6    # "targetUid":I
    .restart local v16    # "targetUid":I
    :cond_15
    :goto_8
    nop

    :goto_9
    move/from16 v1, v18

    .line 1220
    .local v1, "specialCrossUserGrant":Z
    iget-boolean v0, v15, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1221
    .local v0, "grantAllowed":Z
    iget-object v2, v15, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1222
    iget-object v2, v15, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v2, v2

    .line 1223
    .local v2, "N":I
    const/4 v0, 0x0

    .line 1224
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_17

    .line 1225
    iget-object v4, v15, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    if-eqz v4, :cond_16

    iget-object v4, v15, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    iget-object v5, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1226
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1227
    const/4 v0, 0x1

    .line 1228
    move v2, v0

    goto :goto_b

    .line 1224
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_17
    move v2, v0

    goto :goto_b

    .line 1221
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_18
    move v2, v0

    .line 1232
    .end local v0    # "grantAllowed":Z
    .local v2, "grantAllowed":Z
    :goto_b
    if-nez v2, :cond_1b

    .line 1233
    if-eqz v1, :cond_1a

    .line 1236
    if-eqz v20, :cond_19

    goto :goto_c

    .line 1237
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1251
    :cond_1b
    :goto_c
    invoke-direct {v7, v15, v10, v8, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1254
    iget-object v3, v7, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1255
    :try_start_0
    invoke-direct {v7, v10, v8, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    .line 1256
    .local v0, "res":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    if-nez v0, :cond_1d

    .line 1258
    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v4, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1259
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1264
    :cond_1c
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1256
    .end local v0    # "res":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1270
    :cond_1d
    return v16
.end method

.method private checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .locals 16
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "considerUidPermissions"    # Z

    .line 926
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 930
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x1

    if-ne v3, v2, :cond_0

    .line 931
    return v4

    .line 932
    :cond_0
    iget-boolean v3, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 933
    return v5

    .line 936
    :cond_1
    and-int/lit8 v3, p4, 0x1

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    .line 937
    .local v3, "readMet":Z
    :goto_0
    and-int/lit8 v6, p4, 0x2

    if-nez v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    .line 940
    .local v6, "writeMet":Z
    :goto_1
    if-nez v3, :cond_4

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v7, :cond_4

    if-eqz p5, :cond_4

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 941
    invoke-direct {v0, v7, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    .line 942
    const/4 v3, 0x1

    .line 944
    :cond_4
    if-nez v6, :cond_5

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v7, :cond_5

    if-eqz p5, :cond_5

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 945
    invoke-direct {v0, v7, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_5

    .line 946
    const/4 v6, 0x1

    .line 951
    :cond_5
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v5

    .line 952
    .local v7, "allowDefaultRead":Z
    :goto_2
    iget-object v8, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v8, :cond_7

    move v8, v4

    goto :goto_3

    :cond_7
    move v8, v5

    .line 955
    .local v8, "allowDefaultWrite":Z
    :goto_3
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 956
    .local v9, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v9, :cond_d

    .line 957
    move-object/from16 v10, p2

    iget-object v11, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 958
    .local v11, "path":Ljava/lang/String;
    array-length v12, v9

    .line 959
    .local v12, "i":I
    :goto_4
    if-lez v12, :cond_e

    if-eqz v3, :cond_8

    if-nez v6, :cond_e

    .line 960
    :cond_8
    add-int/lit8 v12, v12, -0x1

    .line 961
    aget-object v13, v9, v12

    .line 962
    .local v13, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v13, v11}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 963
    if-nez v3, :cond_a

    .line 964
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v14

    .line 969
    .local v14, "pprperm":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 970
    if-eqz p5, :cond_9

    invoke-direct {v0, v14, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_9

    .line 972
    const/4 v3, 0x1

    goto :goto_5

    .line 974
    :cond_9
    const/4 v7, 0x0

    .line 978
    .end local v14    # "pprperm":Ljava/lang/String;
    :cond_a
    :goto_5
    if-nez v6, :cond_c

    .line 979
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    .line 984
    .local v14, "ppwperm":Ljava/lang/String;
    if-eqz v14, :cond_c

    .line 985
    if-eqz p5, :cond_b

    invoke-direct {v0, v14, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_b

    .line 987
    const/4 v6, 0x1

    goto :goto_6

    .line 989
    :cond_b
    const/4 v8, 0x0

    .line 994
    .end local v13    # "pp":Landroid/content/pm/PathPermission;
    .end local v14    # "ppwperm":Ljava/lang/String;
    :cond_c
    :goto_6
    goto :goto_4

    .line 956
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "i":I
    :cond_d
    move-object/from16 v10, p2

    .line 999
    :cond_e
    if-eqz v7, :cond_f

    const/4 v3, 0x1

    .line 1000
    :cond_f
    if-eqz v8, :cond_10

    const/4 v6, 0x1

    .line 1017
    :cond_10
    const/4 v11, 0x1

    .line 1020
    .local v11, "forceMet":Z
    if-eqz v3, :cond_11

    if-eqz v6, :cond_11

    if-eqz v11, :cond_11

    goto :goto_7

    :cond_11
    move v4, v5

    :goto_7
    return v4

    .line 927
    .end local v3    # "readMet":Z
    .end local v6    # "writeMet":Z
    .end local v7    # "allowDefaultRead":Z
    .end local v8    # "allowDefaultWrite":Z
    .end local v9    # "pps":[Landroid/content/pm/PathPermission;
    .end local v11    # "forceMet":Z
    :cond_12
    move-object/from16 v10, p2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must never hold local mLock"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .locals 7
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 913
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_0

    .line 914
    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, p3, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    const/4 v0, 0x0

    return v0

    .line 919
    :cond_0
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    return v0
.end method

.method private checkUidPermission(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 209
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 11
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 1284
    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1285
    .local v0, "persistable":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    .line 1286
    :cond_1
    move v3, v2

    :goto_1
    nop

    .line 1289
    .local v3, "minStrength":I
    if-nez p2, :cond_2

    .line 1290
    return v2

    .line 1293
    :cond_2
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1294
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v4, :cond_3

    return v1

    .line 1297
    :cond_3
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 1300
    .local v5, "exactPerm":Lcom/android/server/uri/UriPermission;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1301
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 1300
    const-string v8, "UriGrantsManagerService"

    invoke-static {v8, v6, v7}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1302
    if-nez v5, :cond_4

    .line 1303
    new-instance v6, Lcom/android/server/uri/GrantUri;

    iget-object v7, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {v6, v1, v7, p3}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 1306
    .local v6, "newGrantUri":Lcom/android/server/uri/GrantUri;
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1307
    .local v7, "newExactPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v7, :cond_4

    invoke-virtual {v7, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 1308
    return v2

    .line 1313
    .end local v6    # "newGrantUri":Lcom/android/server/uri/GrantUri;
    .end local v7    # "newExactPerm":Lcom/android/server/uri/UriPermission;
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v6

    if-lt v6, v3, :cond_5

    .line 1314
    return v2

    .line 1318
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1319
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_7

    .line 1320
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1321
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v10, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v10, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1322
    invoke-virtual {v8, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v9

    if-lt v9, v3, :cond_6

    .line 1323
    return v2

    .line 1319
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1327
    .end local v7    # "i":I
    :cond_7
    return v1
.end method

.method static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .locals 2
    .param p0, "systemDir"    # Ljava/io/File;

    .line 165
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 166
    .local v0, "service":Lcom/android/server/uri/UriGrantsManagerService;
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 167
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 168
    return-object v0
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 1058
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    return-void

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 3
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 739
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 740
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_0

    .line 741
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 746
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-nez v1, :cond_1

    .line 747
    new-instance v2, Lcom/android/server/uri/UriPermission;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    move-object v1, v2

    .line 748
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_1
    return-object v1
.end method

.method private findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 2
    .param p1, "targetUid"    # I
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 1043
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1044
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    return-object v1

    .line 1047
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "pmFlags"    # I

    .line 1064
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 v1, p3, 0x800

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 229
    move-object/from16 v0, p4

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 230
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 229
    const/4 v13, 0x0

    const/4 v14, 0x2

    const-string v15, "grantUriPermissionFromOwner"

    const/16 v16, 0x0

    move/from16 v12, p7

    invoke-virtual/range {v9 .. v16}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 233
    .end local p7    # "targetUserId":I
    .local v9, "targetUserId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v10

    .line 234
    .local v10, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v10, :cond_4

    .line 237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v11, p2

    if-eq v11, v1, :cond_1

    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "nice try"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 247
    if-eqz v0, :cond_2

    .line 251
    new-instance v4, Lcom/android/server/uri/GrantUri;

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct {v4, v13, v0, v12}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 253
    return-void

    .line 248
    :cond_2
    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_3
    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null target"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_4
    move/from16 v11, p2

    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .locals 10
    .param p1, "targetUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 756
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    return-void

    .line 766
    :cond_0
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 769
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_1

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for grant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UriGrantsManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void

    .line 775
    :cond_1
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 776
    :try_start_0
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 777
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-virtual {v3, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z

    .line 779
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    .line 780
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v9, 0x0

    .line 779
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 781
    return-void

    .line 777
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 8
    .param p1, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 786
    if-nez p1, :cond_0

    .line 787
    return-void

    .line 789
    :cond_0
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 790
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 791
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 792
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/uri/GrantUri;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 791
    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;
    .param p6, "targetUserId"    # I

    .line 798
    if-eqz p2, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, p2, v1, p6}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v0

    .line 804
    .local v0, "targetUid":I
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 806
    if-gez v0, :cond_0

    .line 807
    return-void

    .line 810
    :cond_0
    move-object v1, p0

    move v2, v0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 811
    return-void

    .line 799
    .end local v0    # "targetUid":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;

    .line 536
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "uriAuth":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 538
    .local v1, "cpiAuth":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 539
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 541
    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "cpiAuths":[Ljava/lang/String;
    array-length v3, v2

    .line 543
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 544
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    .line 543
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 546
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private maybePrunePersistedUriGrantsLocked(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 557
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 558
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 559
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    return v1

    .line 561
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 562
    .local v2, "persisted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 563
    .local v5, "perm":Lcom/android/server/uri/UriPermission;
    iget v6, v5, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v6, :cond_2

    .line 564
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v5    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    goto :goto_0

    .line 568
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 569
    .local v4, "trimCount":I
    if-gtz v4, :cond_4

    return v1

    .line 571
    :cond_4
    new-instance v1, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v1}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 572
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 573
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 577
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 578
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 572
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private readGrantedUriPermissionsLocked()V
    .locals 31

    .line 666
    move-object/from16 v1, p0

    const-string v2, "Failed reading Uri grants"

    const-string v3, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 668
    .local v4, "now":J
    const/4 v6, 0x0

    .line 670
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v6, v0

    .line 671
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 672
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 675
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_6

    .line 676
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 677
    .local v7, "tag":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 678
    const-string v9, "uri-grant"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 681
    const-string v9, "userHandle"

    const/16 v10, -0x2710

    invoke-static {v0, v9, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 683
    .local v9, "userHandle":I
    if-eq v9, v10, :cond_0

    .line 685
    move v10, v9

    .line 686
    .local v10, "sourceUserId":I
    move v11, v9

    move v15, v11

    .local v11, "targetUserId":I
    goto :goto_1

    .line 688
    .end local v10    # "sourceUserId":I
    .end local v11    # "targetUserId":I
    :cond_0
    const-string v10, "sourceUserId"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 689
    .restart local v10    # "sourceUserId":I
    const-string v11, "targetUserId"

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    move v15, v11

    .line 691
    .local v15, "targetUserId":I
    :goto_1
    const-string v11, "sourcePkg"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    .line 692
    .local v14, "sourcePkg":Ljava/lang/String;
    const-string v11, "targetPkg"

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 693
    .local v13, "targetPkg":Ljava/lang/String;
    const-string v11, "uri"

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object v12, v11

    .line 694
    .local v12, "uri":Landroid/net/Uri;
    const-string v11, "prefix"

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    move/from16 v17, v11

    .line 695
    .local v17, "prefix":Z
    const-string v11, "modeFlags"

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 696
    .local v11, "modeFlags":I
    move-object/from16 v18, v7

    .end local v7    # "tag":Ljava/lang/String;
    .local v18, "tag":Ljava/lang/String;
    const-string v7, "createdTime"

    invoke-static {v0, v7, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 701
    .local v21, "createdTime":J
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v0

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v19, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/high16 v0, 0xc0000

    invoke-direct {v1, v7, v10, v0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 703
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_3

    iget-object v7, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 704
    iget-object v7, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .local v23, "now":J
    const/16 v4, 0x2000

    :try_start_1
    invoke-virtual {v7, v13, v4, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v4

    .line 706
    .local v4, "targetUid":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 707
    new-instance v5, Lcom/android/server/uri/GrantUri;

    .line 708
    if-eqz v17, :cond_1

    const/16 v7, 0x80

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-direct {v5, v10, v12, v7}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 709
    .local v5, "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {v1, v14, v13, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v7

    .line 711
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    move-object/from16 v20, v13

    move-object/from16 v16, v14

    move-wide/from16 v13, v21

    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v21    # "createdTime":J
    .local v13, "createdTime":J
    .local v16, "sourcePkg":Ljava/lang/String;
    .local v20, "targetPkg":Ljava/lang/String;
    invoke-virtual {v7, v11, v13, v14}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 712
    move-object/from16 v21, v5

    .end local v5    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v21, "grantUri":Lcom/android/server/uri/GrantUri;
    iget-object v5, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v22, 0x0

    .line 714
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v26, 0x0

    .line 712
    move/from16 v27, v11

    .end local v11    # "modeFlags":I
    .local v27, "modeFlags":I
    move-object v11, v5

    move-object v5, v12

    .end local v12    # "uri":Landroid/net/Uri;
    .local v5, "uri":Landroid/net/Uri;
    move v12, v15

    move-wide/from16 v28, v13

    .end local v13    # "createdTime":J
    .local v28, "createdTime":J
    move-object/from16 v13, v22

    move-object/from16 v30, v16

    .end local v16    # "sourcePkg":Ljava/lang/String;
    .local v30, "sourcePkg":Ljava/lang/String;
    move/from16 v14, v25

    move/from16 v22, v15

    .end local v15    # "targetUserId":I
    .local v22, "targetUserId":I
    move v15, v1

    move/from16 v16, v26

    invoke-virtual/range {v11 .. v16}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    goto :goto_3

    .line 706
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v22    # "targetUserId":I
    .end local v27    # "modeFlags":I
    .end local v28    # "createdTime":J
    .end local v30    # "sourcePkg":Ljava/lang/String;
    .restart local v11    # "modeFlags":I
    .restart local v12    # "uri":Landroid/net/Uri;
    .local v13, "targetPkg":Ljava/lang/String;
    .restart local v14    # "sourcePkg":Ljava/lang/String;
    .restart local v15    # "targetUserId":I
    .local v21, "createdTime":J
    :cond_2
    move/from16 v27, v11

    move-object v5, v12

    move-object/from16 v20, v13

    move-object/from16 v30, v14

    move-wide/from16 v28, v21

    move/from16 v22, v15

    .line 718
    .end local v4    # "targetUid":I
    .end local v11    # "modeFlags":I
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "targetPkg":Ljava/lang/String;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetUserId":I
    .end local v21    # "createdTime":J
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "targetPkg":Ljava/lang/String;
    .restart local v22    # "targetUserId":I
    .restart local v27    # "modeFlags":I
    .restart local v28    # "createdTime":J
    .restart local v30    # "sourcePkg":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 703
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v22    # "targetUserId":I
    .end local v23    # "now":J
    .end local v27    # "modeFlags":I
    .end local v28    # "createdTime":J
    .end local v30    # "sourcePkg":Ljava/lang/String;
    .local v4, "now":J
    .restart local v11    # "modeFlags":I
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v13    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "sourcePkg":Ljava/lang/String;
    .restart local v15    # "targetUserId":I
    .restart local v21    # "createdTime":J
    :cond_3
    move-wide/from16 v23, v4

    move/from16 v27, v11

    move-object v5, v12

    move-object/from16 v20, v13

    move-object/from16 v30, v14

    move-wide/from16 v28, v21

    move/from16 v22, v15

    .line 719
    .end local v4    # "now":J
    .end local v11    # "modeFlags":I
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "targetPkg":Ljava/lang/String;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetUserId":I
    .end local v21    # "createdTime":J
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "targetPkg":Ljava/lang/String;
    .restart local v22    # "targetUserId":I
    .restart local v23    # "now":J
    .restart local v27    # "modeFlags":I
    .restart local v28    # "createdTime":J
    .restart local v30    # "sourcePkg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisted grant for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " had source "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v30

    .end local v30    # "sourcePkg":Ljava/lang/String;
    .local v4, "sourcePkg":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but instead found "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 729
    .end local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "sourcePkg":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "type":I
    .end local v9    # "userHandle":I
    .end local v10    # "sourceUserId":I
    .end local v17    # "prefix":Z
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v22    # "targetUserId":I
    .end local v27    # "modeFlags":I
    .end local v28    # "createdTime":J
    :catch_0
    move-exception v0

    goto :goto_5

    .line 727
    :catch_1
    move-exception v0

    goto :goto_6

    .line 725
    :catch_2
    move-exception v0

    goto :goto_8

    .line 678
    .end local v23    # "now":J
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v4, "now":J
    .local v7, "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_4
    move-object/from16 v19, v0

    move-wide/from16 v23, v4

    move-object/from16 v18, v7

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "now":J
    .end local v7    # "tag":Ljava/lang/String;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "now":J
    goto :goto_4

    .line 677
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "now":J
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "now":J
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v0

    move-wide/from16 v23, v4

    move-object/from16 v18, v7

    .line 724
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "now":J
    .end local v7    # "tag":Ljava/lang/String;
    .restart local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "now":J
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v0, v19

    move-wide/from16 v4, v23

    goto/16 :goto_0

    .line 675
    .end local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "now":J
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "now":J
    :cond_6
    move-object/from16 v19, v0

    move-wide/from16 v23, v4

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "now":J
    .end local v8    # "type":I
    .restart local v23    # "now":J
    goto :goto_8

    .line 732
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catchall_0
    move-exception v0

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto :goto_7

    .line 729
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_3
    move-exception v0

    move-wide/from16 v23, v4

    .line 730
    .end local v4    # "now":J
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v23    # "now":J
    :goto_5
    :try_start_2
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_9

    .line 727
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_4
    move-exception v0

    move-wide/from16 v23, v4

    .line 728
    .end local v4    # "now":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v23    # "now":J
    :goto_6
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 732
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_9

    :catchall_1
    move-exception v0

    :goto_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 733
    throw v0

    .line 725
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_5
    move-exception v0

    move-wide/from16 v23, v4

    .line 732
    .end local v4    # "now":J
    .restart local v23    # "now":J
    :goto_8
    nop

    :goto_9
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 733
    nop

    .line 734
    return-void
.end method

.method private removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .locals 3
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 1025
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_0

    .line 1026
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1030
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_1

    .line 1031
    return-void

    .line 1035
    :cond_1
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1037
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1039
    :cond_2
    return-void
.end method

.method private removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "persistable"    # Z
    .param p4, "targetOnly"    # Z

    .line 458
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must narrow by either package or user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 464
    .local v1, "persistChanged":Z
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 465
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_a

    .line 466
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 467
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 470
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v6, 0x1

    if-eq p2, v0, :cond_2

    .line 471
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_9

    .line 472
    :cond_2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 473
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 476
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_4

    if-nez p4, :cond_3

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 477
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 481
    :cond_4
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez p3, :cond_5

    .line 482
    goto :goto_2

    .line 484
    :cond_5
    if-eqz p3, :cond_6

    .line 485
    move v9, v0

    goto :goto_3

    :cond_6
    const/16 v9, -0x41

    .line 484
    :goto_3
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v1, v9

    .line 489
    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_7

    .line 490
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 493
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_7
    goto :goto_2

    .line 495
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 496
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 497
    add-int/lit8 v2, v2, -0x1

    .line 498
    add-int/lit8 v3, v3, -0x1

    .line 465
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_9
    add-int/2addr v3, v6

    goto :goto_1

    .line 503
    .end local v3    # "i":I
    :cond_a
    if-eqz v1, :cond_b

    .line 504
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 506
    :cond_b
    return-void
.end method

.method private revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I

    .line 817
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 820
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_0

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for permission revoke: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 821
    const-string v3, "UriGrantsManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void

    .line 826
    :cond_0
    invoke-direct {p0, v1, p3, p2, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    .line 828
    .local v2, "callerHoldsPermissions":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 829
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move v9, v2

    :try_start_0
    invoke-direct/range {v4 .. v9}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 831
    monitor-exit v3

    .line 832
    return-void

    .line 831
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .locals 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "callerHoldsPermissions"    # Z

    .line 838
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_5

    .line 841
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 842
    .local v2, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v2, :cond_4

    .line 843
    const/4 v3, 0x0

    .line 844
    .local v3, "persistChanged":Z
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 845
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 846
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 847
    goto :goto_1

    .line 849
    :cond_0
    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v6, :cond_1

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 850
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 853
    or-int/lit8 v5, p4, 0x40

    invoke-virtual {v1, v5, v0}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr v3, v5

    .line 855
    iget v5, v1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v5, :cond_1

    .line 856
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 844
    .end local v1    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 860
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 863
    :cond_3
    if-eqz v3, :cond_4

    .line 864
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 867
    .end local v3    # "persistChanged":Z
    :cond_4
    return-void

    .line 870
    .end local v2    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_5
    const/4 v2, 0x0

    .line 873
    .local v2, "persistChanged":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_b

    .line 874
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 875
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 877
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_9

    .line 878
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 879
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_6

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 880
    goto :goto_5

    .line 882
    :cond_6
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v8, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v9, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v8, v9, :cond_8

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v8, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v9, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 883
    invoke-virtual {v8, v9}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 886
    or-int/lit8 v8, p4, 0x40

    if-nez p1, :cond_7

    move v9, v1

    goto :goto_4

    :cond_7
    move v9, v0

    :goto_4
    invoke-virtual {v7, v8, v9}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 889
    iget v8, v7, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_8

    .line 890
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 877
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 895
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 896
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 873
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 900
    .end local v3    # "i":I
    :cond_b
    if-eqz v2, :cond_c

    .line 901
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 903
    :cond_c
    return-void
.end method

.method private schedulePersistUriGrants()V
    .locals 4

    .line 1051
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1055
    :cond_0
    return-void
.end method

.method private start()V
    .locals 3

    .line 177
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method private writeGrantedUriPermissionsLocked()V
    .locals 11

    .line 1334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1337
    .local v0, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1338
    .local v2, "persist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission$Snapshot;>;"
    monitor-enter p0

    .line 1339
    :try_start_0
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1340
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1341
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1342
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1343
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_0

    .line 1344
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_0
    goto :goto_1

    .line 1340
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1348
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    const/4 v3, 0x0

    .line 1352
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 1354
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1355
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1356
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1357
    const-string v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1358
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1359
    .local v7, "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    const-string v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1360
    const-string v8, "sourceUserId"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v9, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1361
    const-string v8, "targetUserId"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1362
    const-string v8, "sourcePkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1363
    const-string v8, "targetPkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1364
    const-string v8, "uri"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1365
    const-string v8, "prefix"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1366
    const-string v8, "modeFlags"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1367
    const-string v8, "createdTime"

    iget-wide v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-static {v4, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1368
    const-string v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    nop

    .end local v7    # "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    goto :goto_2

    .line 1370
    :cond_3
    const-string v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1371
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1373
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1378
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_3

    .line 1374
    :catch_0
    move-exception v4

    .line 1375
    .local v4, "e":Ljava/io/IOException;
    if-eqz v3, :cond_4

    .line 1376
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1379
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .line 1348
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 386
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/GrantedUriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 314
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 316
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 317
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 318
    .local v6, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget v7, v6, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v7, p2, :cond_1

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_1

    .line 321
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v6    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 314
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 325
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .locals 2

    .line 173
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$1;)V

    return-object v0
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "persistedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 258
    const-string v0, "getUriPermissions"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 259
    const-string v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 262
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 263
    .local v1, "callingUserId":I
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 264
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    const/high16 v3, 0xc0000

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v3

    .line 266
    .local v3, "packageUid":I
    if-ne v3, v0, :cond_9

    .line 271
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 272
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 273
    if-eqz p2, :cond_4

    .line 274
    :try_start_0
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 276
    .local v6, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v6, :cond_0

    .line 277
    const-string v7, "UriGrantsManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No permission grants found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 280
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 281
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p3, :cond_1

    iget v9, v8, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v9, :cond_2

    .line 283
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 287
    .end local v6    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v7    # "j":I
    :cond_3
    :goto_1
    goto :goto_4

    .line 288
    :cond_4
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 289
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_8

    .line 290
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 291
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 292
    .local v8, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 293
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 294
    .local v10, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v11, v10, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz p3, :cond_5

    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_6

    .line 296
    :cond_5
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v10    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 289
    .end local v8    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v9    # "j":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 301
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_8
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v5

    .line 301
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 267
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    :cond_9
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not belong to calling UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 218
    invoke-direct/range {p0 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 220
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 404
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string v3, "releasePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_0

    .line 409
    .end local v1    # "uid":I
    :cond_0
    const-string v1, "releasePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 413
    .restart local v1    # "uid":I
    :goto_0
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 416
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 417
    const/4 v3, 0x0

    .line 419
    .local v3, "persistChanged":Z
    :try_start_0
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 421
    .local v0, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 423
    .local v4, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    .line 424
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No permission grants found for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v5

    .line 428
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {v0, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 430
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 432
    :cond_3
    if-eqz v4, :cond_4

    .line 433
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 434
    invoke-direct {p0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 437
    :cond_4
    if-eqz v3, :cond_5

    .line 438
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 440
    .end local v0    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v3    # "persistChanged":Z
    .end local v4    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :cond_5
    monitor-exit v2

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 339
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string v3, "takePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_0

    .line 344
    .end local v1    # "uid":I
    :cond_0
    const-string v1, "takePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 348
    .restart local v1    # "uid":I
    :goto_0
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 351
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 352
    const/4 v3, 0x0

    .line 354
    .local v3, "persistChanged":Z
    :try_start_0
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 356
    .local v4, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v5, Lcom/android/server/uri/GrantUri;

    const/16 v6, 0x80

    invoke-direct {v5, p4, p1, v6}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 359
    .local v5, "prefixPerm":Lcom/android/server/uri/UriPermission;
    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget v7, v4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v7, p2

    if-ne v7, p2, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v0

    .line 361
    .local v7, "exactValid":Z
    :goto_1
    if-eqz v5, :cond_2

    iget v8, v5, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, p2

    if-ne v8, p2, :cond_2

    move v0, v6

    .line 364
    .local v0, "prefixValid":Z
    :cond_2
    if-nez v7, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 365
    :cond_3
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No persistable permission grants found for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and Uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v6

    .line 369
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 370
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 372
    :cond_5
    if-eqz v0, :cond_6

    .line 373
    invoke-virtual {v5, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 376
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 378
    if-eqz v3, :cond_7

    .line 379
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 381
    .end local v0    # "prefixValid":Z
    .end local v3    # "persistChanged":Z
    .end local v4    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v5    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    .end local v7    # "exactValid":Z
    :cond_7
    monitor-exit v2

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
