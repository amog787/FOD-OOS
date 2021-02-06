.class public abstract Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.super Ljava/lang/Object;
.source "SoftRestrictedPermissionPolicy.java"


# static fields
.field private static final DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

.field private static final FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT:I = 0x3800

.field private static final sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;-><init>()V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    .line 72
    invoke-static {}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getForcedScopedStorageAppWhitelist()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "permission"    # Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x1833add0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x516a29a7

    if-eq v4, v5, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_1

    :cond_2
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :goto_0
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v7, :cond_3

    .line 211
    sget-object v4, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    return-object v4

    .line 193
    :cond_3
    if-eqz v1, :cond_5

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    .line 196
    .local v4, "flags":I
    and-int/lit16 v5, v4, 0x3800

    if-eqz v5, :cond_4

    move v6, v7

    :cond_4
    move v5, v6

    .line 197
    .local v5, "isWhiteListed":Z
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v4

    .line 198
    .local v4, "targetSDK":I
    goto :goto_2

    .line 199
    .end local v4    # "targetSDK":I
    .end local v5    # "isWhiteListed":Z
    :cond_5
    const/4 v5, 0x0

    .line 200
    .restart local v5    # "isWhiteListed":Z
    const/4 v4, 0x0

    .line 203
    .restart local v4    # "targetSDK":I
    :goto_2
    new-instance v6, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;

    invoke-direct {v6, v5, v4}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;-><init>(ZI)V

    return-object v6

    .line 134
    .end local v4    # "targetSDK":I
    .end local v5    # "isWhiteListed":Z
    :cond_6
    if-eqz v1, :cond_c

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 136
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-class v5, Landroid/os/storage/StorageManagerInternal;

    .line 137
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    .line 138
    .local v5, "smInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v8, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v8

    .line 139
    .local v8, "flags":I
    and-int/lit16 v9, v8, 0x3800

    if-eqz v9, :cond_7

    move v9, v7

    goto :goto_3

    :cond_7
    move v9, v6

    .line 140
    .local v9, "isWhiteListed":Z
    :goto_3
    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->hasUidRequestedLegacyExternalStorage(ILandroid/content/Context;)Z

    move-result v10

    .line 142
    .local v10, "hasRequestedLegacyExternalStorage":Z
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->hasWriteMediaStorageGrantedForUid(ILandroid/content/Context;)Z

    move-result v11

    .line 144
    .local v11, "hasWriteMediaStorageGrantedForUid":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v12

    if-eqz v12, :cond_8

    iget v12, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 145
    invoke-virtual {v5, v12}, Landroid/os/storage/StorageManagerInternal;->hasLegacyExternalStorage(I)Z

    move-result v12

    if-eqz v12, :cond_8

    move v12, v7

    goto :goto_4

    :cond_8
    move v12, v6

    .line 146
    .local v12, "shouldPreserveLegacyExternalStorage":Z
    :goto_4
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v13

    .line 148
    .local v13, "targetSDK":I
    and-int/lit16 v14, v8, 0x4000

    if-nez v14, :cond_a

    const/16 v14, 0x1d

    if-le v13, v14, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    sget-object v14, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 153
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_a
    move v6, v7

    :cond_b
    move v4, v6

    .line 154
    .end local v5    # "smInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v8    # "flags":I
    .local v4, "shouldApplyRestriction":Z
    goto :goto_5

    .line 155
    .end local v4    # "shouldApplyRestriction":Z
    .end local v9    # "isWhiteListed":Z
    .end local v10    # "hasRequestedLegacyExternalStorage":Z
    .end local v11    # "hasWriteMediaStorageGrantedForUid":Z
    .end local v12    # "shouldPreserveLegacyExternalStorage":Z
    .end local v13    # "targetSDK":I
    :cond_c
    const/4 v9, 0x0

    .line 156
    .restart local v9    # "isWhiteListed":Z
    const/4 v4, 0x0

    .line 157
    .restart local v4    # "shouldApplyRestriction":Z
    const/4 v13, 0x0

    .line 158
    .restart local v13    # "targetSDK":I
    const/4 v10, 0x0

    .line 159
    .restart local v10    # "hasRequestedLegacyExternalStorage":Z
    const/4 v12, 0x0

    .line 160
    .restart local v12    # "shouldPreserveLegacyExternalStorage":Z
    const/4 v11, 0x0

    .line 167
    .restart local v11    # "hasWriteMediaStorageGrantedForUid":Z
    :goto_5
    new-instance v5, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;

    move-object v14, v5

    move v15, v9

    move/from16 v16, v13

    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;-><init>(ZIZZZZ)V

    return-object v5
.end method

.method private static getForcedScopedStorageAppWhitelist()[Ljava/lang/String;
    .locals 3

    .line 253
    const-string/jumbo v0, "storage_native_boot"

    const-string v1, "forced_scoped_storage_whitelist"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "rawList":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    :cond_1
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 90
    .local v1, "minimumTargetSDK":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "uidPkgs":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 92
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 93
    .local v6, "uidPkg":Ljava/lang/String;
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {v0, v6, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v7, "uidPkgInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 101
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1, v8}, Ljava/lang/Integer;->min(II)I

    move-result v1

    goto :goto_1

    .line 97
    .end local v7    # "uidPkgInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 92
    .end local v6    # "uidPkg":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    :cond_1
    return v1
.end method

.method private static hasUidRequestedLegacyExternalStorage(ILandroid/content/Context;)Z
    .locals 9
    .param p0, "uid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 217
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 219
    return v2

    .line 221
    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 222
    .local v3, "user":Landroid/os/UserHandle;
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 225
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v6, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 229
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    const/4 v2, 0x1

    return v2

    .line 226
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 222
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    :cond_2
    return v2
.end method

.method private static hasWriteMediaStorageGrantedForUid(ILandroid/content/Context;)Z
    .locals 7
    .param p0, "uid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 238
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 240
    return v2

    .line 243
    :cond_0
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 244
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 246
    const/4 v2, 0x1

    return v2

    .line 243
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    :cond_2
    return v2
.end method


# virtual methods
.method public getExtraAppOpCode()I
    .locals 1

    .line 271
    const/4 v0, -0x1

    return v0
.end method

.method public mayAllowExtraAppOp()Z
    .locals 1

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public mayDenyExtraAppOpIfGranted()Z
    .locals 1

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public abstract mayGrantPermission()Z
.end method
