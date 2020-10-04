.class Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# static fields
.field private static final FEATURE_FLAG_IDMAP2:Z = true

.field private static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field private mIdmap2Service:Landroid/os/IIdmap2;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    const-string/jumbo v0, "ro.vndk.version"

    const-string v1, "29"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
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

    .line 68
    .local v1, "isQOrLater":Z
    :goto_0
    goto :goto_1

    .line 65
    .end local v1    # "isQOrLater":Z
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    .line 70
    .local v1, "isQOrLater":Z
    :goto_1
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    .line 71
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "isQOrLater":Z
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;)V
    .locals 0
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "packageManager"    # Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 75
    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    .line 77
    invoke-direct {p0}, Lcom/android/server/om/IdmapManager;->connectToIdmap2d()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/om/IdmapManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/om/IdmapManager;

    .line 52
    invoke-direct {p0}, Lcom/android/server/om/IdmapManager;->connectToIdmap2d()V

    return-void
.end method

.method private calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I
    .locals 5
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 211
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 212
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    .line 215
    .local v1, "fulfilledPolicies":I
    iget-object v2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    or-int/lit8 v1, v1, 0x10

    .line 221
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    or-int/lit8 v2, v1, 0x4

    return v2

    .line 226
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    or-int/lit8 v2, v1, 0x8

    return v2

    .line 231
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    or-int/lit8 v2, v1, 0x20

    return v2

    .line 236
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    or-int/lit8 v2, v1, 0x40

    return v2

    .line 242
    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProductServices()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 243
    return v1

    .line 247
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    or-int/lit8 v2, v1, 0x2

    return v2

    .line 251
    :cond_6
    return v1
.end method

.method private connectToIdmap2d()V
    .locals 5

    .line 155
    const-string v0, "idmap"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 156
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    new-instance v1, Lcom/android/server/om/IdmapManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/om/IdmapManager$1;-><init>(Lcom/android/server/om/IdmapManager;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 170
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const-string v1, "OverlayManager"

    if-eqz v0, :cond_1

    .line 171
    invoke-static {v0}, Landroid/os/IIdmap2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/om/IdmapManager;->mIdmap2Service:Landroid/os/IIdmap2;

    .line 172
    sget-boolean v2, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 173
    const-string/jumbo v2, "service \'idmap\' connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_1
    const-string/jumbo v2, "service \'idmap\' not found; trying again..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/om/-$$Lambda$IdmapManager$CK7wBONETFX3KTlO4L5BDA9DNJk;

    invoke-direct {v2, p0}, Lcom/android/server/om/-$$Lambda$IdmapManager$CK7wBONETFX3KTlO4L5BDA9DNJk;-><init>(Lcom/android/server/om/IdmapManager;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :cond_2
    :goto_1
    return-void
.end method

.method private enforceOverlayable(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;

    .line 188
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 189
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    .line 191
    return v2

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    sget-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return v1

    .line 203
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

.method private getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "overlayPackagePath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmap2Service:Landroid/os/IIdmap2;

    invoke-interface {v0, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get idmap path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "OverlayManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .locals 18
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 83
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v4, " and "

    const-string v5, "OverlayManager"

    if-eqz v0, :cond_0

    .line 84
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

    .line 87
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v6

    .line 88
    .local v6, "sharedGid":I
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, "targetPath":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v14

    .line 92
    .local v14, "overlayPath":Ljava/lang/String;
    const/4 v15, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p3}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v0

    .line 93
    .local v0, "policies":I
    invoke-direct {v1, v3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    move v12, v7

    .line 94
    .local v12, "enforce":Z
    iget-object v7, v1, Lcom/android/server/om/IdmapManager;->mIdmap2Service:Landroid/os/IIdmap2;

    move/from16 v11, p3

    invoke-interface {v7, v14, v0, v12, v11}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;IZI)Z

    move-result v7

    const/16 v16, 0x1

    if-eqz v7, :cond_1

    .line 95
    return v16

    .line 97
    :cond_1
    iget-object v7, v1, Lcom/android/server/om/IdmapManager;->mIdmap2Service:Landroid/os/IIdmap2;

    move-object v8, v13

    move-object v9, v14

    move v10, v0

    move v11, v12

    move/from16 v17, v12

    .end local v12    # "enforce":Z
    .local v17, "enforce":Z
    move/from16 v12, p3

    invoke-interface/range {v7 .. v12}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    move/from16 v15, v16

    :cond_2
    return v15

    .line 103
    .end local v0    # "policies":I
    .end local v17    # "enforce":Z
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to generate idmap for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v15
.end method

.method idmapExists(Landroid/content/om/OverlayInfo;)Z
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 128
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method idmapExists(Landroid/content/pm/PackageInfo;I)Z
    .locals 2
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 132
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    .line 132
    return v0
.end method

.method public synthetic lambda$connectToIdmap2d$0$IdmapManager()V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/android/server/om/IdmapManager;->connectToIdmap2d()V

    .line 179
    return-void
.end method

.method removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .locals 4
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "userId"    # I

    .line 111
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove idmap for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmap2Service:Landroid/os/IIdmap2;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
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

    .line 123
    const/4 v1, 0x0

    return v1
.end method
