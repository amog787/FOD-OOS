.class public abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field categoryHint:I

.field childPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field codePath:Ljava/io/File;

.field public codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field installPermissionsFixed:Z

.field installerPackageName:Ljava/lang/String;

.field isOrphaned:Z

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mOldCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field parentPackageName:Ljava/lang/String;

.field primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field secondaryCpuAbiString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field updateAvailable:Z

.field usesStaticLibraries:[Ljava/lang/String;

.field usesStaticLibrariesVersions:[J

.field verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field versionCode:J

.field volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    .line 113
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V
    .locals 1
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "realName"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 111
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 168
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 171
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "pVersionCode"    # J
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I
    .param p13, "parentPackageName"    # Ljava/lang/String;
    .param p15, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p16, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .line 147
    .local p14, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p14

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct {v9, v11, v12}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 111
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    .line 135
    const/4 v0, -0x1

    iput v0, v9, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 148
    move-object/from16 v13, p1

    iput-object v13, v9, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 149
    move-object/from16 v14, p2

    iput-object v14, v9, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 150
    move-object/from16 v15, p13

    iput-object v15, v9, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 151
    if-eqz v10, :cond_0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 153
    move-object/from16 v7, p15

    iput-object v7, v9, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 154
    move-object/from16 v8, p16

    iput-object v8, v9, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 157
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 5
    .param p1, "orig"    # Lcom/android/server/pm/PackageSettingBase;

    .line 240
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 242
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 243
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 245
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 246
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 247
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 248
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    .line 249
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 250
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 251
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 254
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 255
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 256
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 257
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 259
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 260
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 266
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 267
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 268
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 269
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 270
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2

    .line 271
    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 272
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_3

    .line 273
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    goto :goto_3

    .line 274
    :cond_3
    nop

    :goto_3
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 275
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 276
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 280
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    .line 281
    new-instance v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v1}, Landroid/content/pm/PackageUserState;-><init>()V

    move-object v0, v1

    .line 282
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    :cond_0
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 509
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 513
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 604
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 606
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 0
    .param p1, "orig"    # Lcom/android/server/pm/PackageSettingBase;

    .line 235
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 237
    return-void
.end method

.method public bridge synthetic copyFrom(Lcom/android/server/pm/SettingBase;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 525
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 526
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 527
    iget-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    nop

    .line 528
    .local v0, "changed":Z
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 529
    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 517
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 518
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 519
    iget-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    nop

    .line 520
    .local v0, "changed":Z
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 521
    return v0
.end method

.method getCeDataInode(I)J
    .locals 2
    .param p1, "userId"    # I

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    return-wide v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 542
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 543
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const/4 v1, 0x1

    return v1

    .line 545
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 546
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    const/4 v1, 0x2

    return v1

    .line 549
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getDistractionFlags(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    return v0
.end method

.method getDomainVerificationStatusForUser(I)J
    .locals 6
    .param p1, "userId"    # I

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 590
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    int-to-long v1, v1

    .line 591
    .local v1, "result":J
    iget v3, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 592
    return-wide v1
.end method

.method getEnabled(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->enabled:I

    return v0
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getHarmfulAppWarning(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 647
    .local v0, "userState":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    return-object v1
.end method

.method getHidden(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    return v0
.end method

.method getInstallReason(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->installReason:I

    return v0
.end method

.method getInstalled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantApp(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    return v0
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getNotInstalledUserIds()[I
    .locals 7

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 560
    .local v1, "userStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 561
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageUserState;

    iget-boolean v3, v3, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v3, :cond_0

    .line 562
    add-int/lit8 v0, v0, 0x1

    .line 560
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    .end local v2    # "i":I
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    return-object v2

    .line 566
    :cond_2
    new-array v2, v0, [I

    .line 567
    .local v2, "excludedUserIds":[I
    const/4 v3, 0x0

    .line 568
    .local v3, "idx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 569
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState;

    iget-boolean v5, v5, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v5, :cond_3

    .line 570
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .local v5, "idx":I
    iget-object v6, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v3

    move v3, v5

    .line 568
    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 573
    .end local v4    # "i":I
    :cond_4
    return-object v2
.end method

.method getNotLaunched(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return v0
.end method

.method getOverlayPaths(I)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method getStopped(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    return v0
.end method

.method getSuspended(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    return v0
.end method

.method getUserState()Landroid/util/SparseArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    return-object v0
.end method

.method getVirtulalPreload(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "codePath"    # Ljava/io/File;
    .param p2, "resourcePath"    # Ljava/io/File;
    .param p3, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p4, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p5, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p6, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p7, "pVersionCode"    # J

    .line 176
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 179
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 181
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 182
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 183
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 184
    iput-wide p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 185
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 186
    return-void
.end method

.method isAnyInstalled([I)Z
    .locals 5
    .param p1, "users"    # [I

    .line 342
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 343
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_0

    .line 344
    const/4 v0, 0x1

    return v0

    .line 342
    .end local v3    # "user":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_1
    return v1
.end method

.method public isSharedUser()Z
    .locals 1

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateAvailable()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    return v0
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    .line 498
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 499
    .local v0, "state":Landroid/content/pm/PackageUserState;
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_0

    .line 500
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 502
    :cond_0
    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_1

    .line 503
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 505
    :cond_1
    return-object v0
.end method

.method queryInstalledUsers([IZ)[I
    .locals 6
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "num":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "num":I
    .local v3, "num":I
    :goto_0
    if-ge v0, v1, :cond_1

    aget v4, p1, v0

    .line 353
    .local v4, "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_0

    .line 354
    add-int/lit8 v3, v3, 0x1

    .line 352
    .end local v4    # "user":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_1
    new-array v0, v3, [I

    .line 358
    .local v0, "res":[I
    const/4 v1, 0x0

    .line 359
    .end local v3    # "num":I
    .local v1, "num":I
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_3

    aget v4, p1, v2

    .line 360
    .restart local v4    # "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_2

    .line 361
    aput v4, v0, v1

    .line 362
    add-int/lit8 v1, v1, 0x1

    .line 359
    .end local v4    # "user":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :cond_3
    return-object v0
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 289
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    .line 290
    sget-object v1, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-object v1

    .line 292
    :cond_0
    iget v1, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v1, v0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 293
    return-object v0
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 555
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 534
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 536
    .local v1, "changed":Z
    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_1

    .line 537
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    or-int/2addr v1, v2

    .line 538
    return v1
.end method

.method setCeDataInode(JI)V
    .locals 1
    .param p1, "ceDataInode"    # J
    .param p3, "userId"    # I

    .line 373
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-wide p1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 374
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 484
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 485
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 493
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 494
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 495
    return-void
.end method

.method setDistractionFlags(II)V
    .locals 1
    .param p1, "distractionFlags"    # I
    .param p2, "userId"    # I

    .line 405
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 406
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "generation"    # I
    .param p3, "userId"    # I

    .line 596
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 597
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 598
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 599
    iput p2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 601
    :cond_0
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 298
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 299
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 300
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 480
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 481
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 488
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 489
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 490
    return-void
.end method

.method setHarmfulAppWarning(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "harmfulAppWarning"    # Ljava/lang/String;

    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 642
    .local v0, "userState":Landroid/content/pm/PackageUserState;
    iput-object p2, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 643
    return-void
.end method

.method setHidden(ZI)V
    .locals 1
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    .line 397
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 398
    return-void
.end method

.method setInstallReason(II)V
    .locals 1
    .param p1, "installReason"    # I
    .param p2, "userId"    # I

    .line 323
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 324
    return-void
.end method

.method setInstalled(ZI)V
    .locals 1
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    .line 311
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 312
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method setInstantApp(ZI)V
    .locals 1
    .param p1, "instantApp"    # Z
    .param p2, "userId"    # I

    .line 427
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 428
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    .line 581
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 582
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 389
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 390
    return-void
.end method

.method setOverlayPaths(Ljava/util/List;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 327
    .local p1, "overlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 328
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    .line 329
    return-void
.end method

.method setStopped(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 381
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 382
    return-void
.end method

.method setSuspended(ZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;I)V
    .locals 3
    .param p1, "suspended"    # Z
    .param p2, "suspendingPackage"    # Ljava/lang/String;
    .param p3, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p4, "appExtras"    # Landroid/os/PersistableBundle;
    .param p5, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p6, "userId"    # I

    .line 414
    invoke-direct {p0, p6}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 415
    .local v0, "existingUserState":Landroid/content/pm/PackageUserState;
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 416
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 417
    if-eqz p1, :cond_1

    move-object v2, p3

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 418
    if-eqz p1, :cond_2

    move-object v2, p4

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 419
    if-eqz p1, :cond_3

    move-object v1, p5

    :cond_3
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 420
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "newStamp"    # J

    .line 205
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 206
    return-void
.end method

.method public setUpdateAvailable(Z)V
    .locals 0
    .param p1, "updateAvailable"    # Z

    .line 209
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 210
    return-void
.end method

.method setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    .locals 16
    .param p1, "userId"    # I
    .param p2, "ceDataInode"    # J
    .param p4, "enabled"    # I
    .param p5, "installed"    # Z
    .param p6, "stopped"    # Z
    .param p7, "notLaunched"    # Z
    .param p8, "hidden"    # Z
    .param p9, "distractionFlags"    # I
    .param p10, "suspended"    # Z
    .param p11, "suspendingPackage"    # Ljava/lang/String;
    .param p12, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p13, "suspendedAppExtras"    # Landroid/os/PersistableBundle;
    .param p14, "suspendedLauncherExtras"    # Landroid/os/PersistableBundle;
    .param p15, "instantApp"    # Z
    .param p16, "virtualPreload"    # Z
    .param p17, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p20, "domainVerifState"    # I
    .param p21, "linkGeneration"    # I
    .param p22, "installReason"    # I
    .param p23, "harmfulAppWarning"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIZZZZIZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/SuspendDialogInfo;",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/PersistableBundle;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 447
    .local p18, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p19, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 448
    .local v0, "state":Landroid/content/pm/PackageUserState;
    move-wide/from16 v1, p2

    iput-wide v1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 449
    move/from16 v3, p4

    iput v3, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 450
    move/from16 v4, p5

    iput-boolean v4, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 451
    move/from16 v5, p6

    iput-boolean v5, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 452
    move/from16 v6, p7

    iput-boolean v6, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 453
    move/from16 v7, p8

    iput-boolean v7, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 454
    move/from16 v8, p9

    iput v8, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 455
    move/from16 v9, p10

    iput-boolean v9, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 456
    move-object/from16 v10, p11

    iput-object v10, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 457
    move-object/from16 v11, p12

    iput-object v11, v0, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 458
    move-object/from16 v12, p13

    iput-object v12, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 459
    move-object/from16 v13, p14

    iput-object v13, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 460
    move-object/from16 v14, p17

    iput-object v14, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 461
    move-object/from16 v15, p18

    iput-object v15, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 462
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 463
    move/from16 v2, p20

    iput v2, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 464
    move/from16 v1, p21

    iput v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 465
    move/from16 v1, p22

    iput v1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 466
    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 467
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 468
    move-object/from16 v1, p23

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 469
    return-void
.end method

.method setVirtualPreload(ZI)V
    .locals 1
    .param p1, "virtualPreload"    # Z
    .param p2, "userId"    # I

    .line 435
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 436
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 198
    return-void
.end method

.method protected updateFrom(Lcom/android/server/pm/PackageSettingBase;)Lcom/android/server/pm/PackageSettingBase;
    .locals 4
    .param p1, "other"    # Lcom/android/server/pm/PackageSettingBase;

    .line 651
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 652
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 653
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 654
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 655
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 656
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 657
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 658
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 659
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 660
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 661
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 662
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 663
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 664
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 665
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 666
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 667
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 668
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 669
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 670
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 671
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 672
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 673
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    .line 674
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 675
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 676
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 677
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 679
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 680
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 681
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 682
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 684
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    .line 687
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageUserState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 691
    .end local v0    # "i":I
    :cond_2
    return-object p0
.end method

.method protected writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 610
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 611
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 612
    .local v2, "userToken":J
    iget-object v4, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 613
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState;

    .line 614
    .local v5, "state":Landroid/content/pm/PackageUserState;
    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 616
    iget-boolean v6, v5, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v6, :cond_0

    .line 617
    const/4 v6, 0x2

    .local v6, "installType":I
    goto :goto_1

    .line 618
    .end local v6    # "installType":I
    :cond_0
    iget-boolean v6, v5, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v6, :cond_1

    .line 619
    const/4 v6, 0x1

    .restart local v6    # "installType":I
    goto :goto_1

    .line 621
    .end local v6    # "installType":I
    :cond_1
    const/4 v6, 0x0

    .line 623
    .restart local v6    # "installType":I
    :goto_1
    const-wide v7, 0x10e00000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 624
    const-wide v7, 0x10800000003L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->hidden:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 625
    const-wide v7, 0x1050000000aL

    iget v9, v5, Landroid/content/pm/PackageUserState;->distractionFlags:I

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 626
    const-wide v7, 0x10800000004L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->suspended:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 627
    iget-boolean v7, v5, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v7, :cond_2

    .line 628
    const-wide v7, 0x10900000009L

    iget-object v9, v5, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 630
    :cond_2
    const-wide v7, 0x10800000005L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->stopped:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 631
    const-wide v7, 0x10800000006L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->notLaunched:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 632
    const-wide v7, 0x10e00000007L

    iget v9, v5, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 633
    const-wide v7, 0x10900000008L

    iget-object v9, v5, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 636
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 610
    .end local v2    # "userToken":J
    .end local v4    # "userId":I
    .end local v5    # "state":Landroid/content/pm/PackageUserState;
    .end local v6    # "installType":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 638
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
