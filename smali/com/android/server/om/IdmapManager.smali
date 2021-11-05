.class final Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# static fields
.field private static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field private final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field private final mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-string/jumbo v0, "ro.vndk.version"

    const-string v1, "29"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 50
    .local v1, "isQOrLater":Z
    :goto_0
    goto :goto_1

    .line 47
    .end local v1    # "isQOrLater":Z
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    move v1, v2

    .line 52
    .local v1, "isQOrLater":Z
    :goto_1
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    .line 53
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "isQOrLater":Z
    return-void
.end method

.method constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/OverlayableInfoCallback;)V
    .locals 0
    .param p1, "idmapDaemon"    # Lcom/android/server/om/IdmapDaemon;
    .param p2, "verifyCallback"    # Lcom/android/server/om/OverlayableInfoCallback;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    .line 60
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 61
    return-void
.end method

.method private calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I
    .locals 5
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 138
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 139
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    .line 142
    .local v1, "fulfilledPolicies":I
    iget-object v2, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p3}, Lcom/android/server/om/OverlayableInfoCallback;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    or-int/lit8 v1, v1, 0x10

    .line 148
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/IdmapManager;->matchesActorSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    or-int/lit16 v1, v1, 0x80

    .line 153
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    or-int/lit8 v2, v1, 0x4

    return v2

    .line 158
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    or-int/lit8 v2, v1, 0x8

    return v2

    .line 163
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    or-int/lit8 v2, v1, 0x20

    return v2

    .line 168
    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    or-int/lit8 v2, v1, 0x40

    return v2

    .line 174
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 178
    :cond_6
    return v1

    .line 175
    :cond_7
    :goto_0
    or-int/lit8 v2, v1, 0x2

    return v2
.end method

.method private enforceOverlayable(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;

    .line 115
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 116
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    .line 118
    return v2

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    sget-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return v1

    .line 130
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private matchesActorSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .locals 5
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 183
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 184
    .local v0, "targetOverlayableName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p3}, Lcom/android/server/om/OverlayableInfoCallback;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object v1

    .line 188
    .local v1, "overlayableInfo":Landroid/content/om/OverlayableInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, v1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    .line 190
    invoke-interface {v3}, Lcom/android/server/om/OverlayableInfoCallback;->getNamedActors()Ljava/util/Map;

    move-result-object v3

    .line 189
    invoke-static {v2, v3}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, "actorPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2, v4, p3}, Lcom/android/server/om/OverlayableInfoCallback;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 193
    const/4 v3, 0x1

    return v3

    .line 197
    .end local v1    # "overlayableInfo":Landroid/content/om/OverlayableInfo;
    .end local v2    # "actorPackageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 200
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .locals 18
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 69
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v4, " and "

    const-string v5, "OverlayManager"

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create idmap for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v15

    .line 74
    .local v15, "targetPath":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, "overlayPath":Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p3}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v9

    .line 77
    .local v9, "policies":I
    invoke-direct {v1, v3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    .line 78
    .local v10, "enforce":Z
    iget-object v6, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object v7, v15

    move-object v8, v14

    move/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    return v17

    .line 81
    :cond_1
    iget-object v11, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v15

    move-object v13, v14

    move-object v6, v14

    .end local v14    # "overlayPath":Ljava/lang/String;
    .local v6, "overlayPath":Ljava/lang/String;
    move v14, v9

    move-object v7, v15

    .end local v15    # "targetPath":Ljava/lang/String;
    .local v7, "targetPath":Ljava/lang/String;
    move v15, v10

    move/from16 v16, p3

    :try_start_1
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    const/16 v17, 0x1

    :cond_2
    return v17

    .line 83
    .end local v9    # "policies":I
    .end local v10    # "enforce":Z
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v7    # "targetPath":Ljava/lang/String;
    .restart local v14    # "overlayPath":Ljava/lang/String;
    .restart local v15    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v6, v14

    move-object v7, v15

    .line 84
    .end local v14    # "overlayPath":Ljava/lang/String;
    .end local v15    # "targetPath":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v7    # "targetPath":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to generate idmap for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v17
.end method

.method idmapExists(Landroid/content/om/OverlayInfo;)Z
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 103
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/om/IdmapDaemon;->idmapExists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method idmapExists(Landroid/content/pm/PackageInfo;I)Z
    .locals 2
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 107
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/om/IdmapDaemon;->idmapExists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .locals 4
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "userId"    # I

    .line 91
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove idmap for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to remove idmap for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    return v1
.end method
