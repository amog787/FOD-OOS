.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field broadcastUsers:[I

.field broadcastWhitelist:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field dataRemoved:Z

.field installReasons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field installerPackageName:Ljava/lang/String;

.field instantUserIds:[I

.field isRemovedPackageSystemUpdate:Z

.field isStaticSharedLib:Z

.field isUpdate:Z

.field origUsers:[I

.field final packageSender:Lcom/android/server/pm/PackageSender;

.field removedAppId:I

.field removedForAllUsers:Z

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field uid:I

.field uninstallReasons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSender;)V
    .locals 2
    .param p1, "packageSender"    # Lcom/android/server/pm/PackageSender;

    .line 19230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19211
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 19212
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    .line 19214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 19215
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19216
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    .line 19219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 19228
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 19231
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    .line 19232
    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(Z)V
    .locals 13
    .param p1, "killApp"    # Z

    .line 19268
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isStaticSharedLib:Z

    if-eqz v0, :cond_0

    .line 19269
    return-void

    .line 19271
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 19272
    .local v0, "extras":Landroid/os/Bundle;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 19273
    .local v1, "removedUid":I
    :goto_0
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19274
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    const-string v3, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19275
    xor-int/lit8 v2, p1, 0x1

    const-string v3, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19276
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isUpdate:Z

    const-string v12, "android.intent.extra.REPLACING"

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v2, :cond_3

    .line 19277
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19279
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedForAllUsers:Z

    const-string v3, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19280
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 19281
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastWhitelist:Landroid/util/SparseArray;

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    move-object v5, v0

    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19284
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 19285
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    const/4 v11, 0x0

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    move-object v5, v0

    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19289
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-nez v2, :cond_5

    .line 19290
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/high16 v6, 0x1000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastWhitelist:Landroid/util/SparseArray;

    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    move-object v5, v0

    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19293
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/server/pm/PackageSender;->notifyPackageRemoved(Ljava/lang/String;I)V

    .line 19296
    :cond_5
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v2, :cond_7

    .line 19299
    const/4 v2, 0x0

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19300
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19303
    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const/4 v4, 0x0

    const/high16 v6, 0x1000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastWhitelist:Landroid/util/SparseArray;

    const-string v3, "android.intent.action.UID_REMOVED"

    move-object v5, v0

    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19307
    :cond_7
    return-void
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .locals 23

    .line 19245
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 19246
    .local v1, "extras":Landroid/os/Bundle;
    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    :goto_0
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19247
    const/4 v2, 0x1

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19248
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastWhitelist:Landroid/util/SparseArray;

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object v6, v1

    invoke-interface/range {v3 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19250
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastWhitelist:Landroid/util/SparseArray;

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-interface/range {v3 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19252
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v14, "android.intent.action.MY_PACKAGE_REPLACED"

    move-object/from16 v18, v2

    invoke-interface/range {v13 .. v22}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19254
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 19255
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object v6, v1

    invoke-interface/range {v3 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19258
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-interface/range {v3 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 19262
    :cond_1
    return-void
.end method


# virtual methods
.method populateUsers([ILcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "userIds"    # [I
    .param p2, "deletedPackageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 19310
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 19311
    if-nez p1, :cond_0

    .line 19312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19313
    return-void

    .line 19316
    :cond_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$4200()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19317
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$4200()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    .line 19318
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 19319
    aget v1, p1, v0

    .line 19320
    .local v1, "userId":I
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19321
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    goto :goto_1

    .line 19323
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19318
    .end local v1    # "userId":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 19326
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method sendPackageRemovedBroadcasts(Z)V
    .locals 0
    .param p1, "killApp"    # Z

    .line 19235
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 19236
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .locals 1

    .line 19239
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_0

    .line 19240
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 19242
    :cond_0
    return-void
.end method
