.class public abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field categoryHint:I

.field codePath:Ljava/io/File;

.field public codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field forceQueryableOverride:Z

.field installPermissionsFixed:Z

.field installSource:Lcom/android/server/pm/InstallSource;

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

.field public primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field public secondaryCpuAbiString:Ljava/lang/String;

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

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    .line 120
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V
    .locals 1
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "realName"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 118
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 180
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 183
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII[Ljava/lang/String;[J)V
    .locals 1
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
    .param p13, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p14, "usesStaticLibrariesVersions"    # [J

    .line 153
    invoke-direct {p0, p11, p12}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 118
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 154
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 156
    iput-object p13, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 157
    iput-object p14, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 158
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 159
    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 160
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 161
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 162
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 163
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 164
    iput-object p7, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 165
    iput-object p8, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 166
    iput-wide p9, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 167
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 168
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    .line 169
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 4
    .param p1, "orig"    # Lcom/android/server/pm/PackageSettingBase;

    .line 245
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 246
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 248
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 249
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 250
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    .line 251
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 252
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 253
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 255
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 256
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 257
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 260
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 261
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageUserState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 267
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 268
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 269
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 270
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 271
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    .line 272
    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 273
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_2

    .line 274
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    goto :goto_2

    .line 275
    :cond_2
    nop

    :goto_2
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 276
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 277
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->forceQueryableOverride:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->forceQueryableOverride:Z

    .line 278
    return-void
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 571
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 575
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method addOrUpdateSuspension(Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;I)V
    .locals 3
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "userId"    # I

    .line 439
    invoke-virtual {p0, p5}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 440
    .local v0, "existingUserState":Landroid/content/pm/PackageUserState;
    nop

    .line 441
    invoke-static {p2, p3, p4}, Landroid/content/pm/PackageUserState$SuspendParams;->getInstanceOrNull(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Landroid/content/pm/PackageUserState$SuspendParams;

    move-result-object v1

    .line 443
    .local v1, "newSuspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    .line 444
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 446
    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 448
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 668
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 0
    .param p1, "orig"    # Lcom/android/server/pm/PackageSettingBase;

    .line 240
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 242
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 587
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 588
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 589
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    nop

    .line 590
    .local v1, "changed":Z
    :goto_0
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 591
    return v1
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 579
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 580
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 581
    iget-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    nop

    .line 582
    .local v0, "changed":Z
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 583
    return v0
.end method

.method getCeDataInode(I)J
    .locals 2
    .param p1, "userId"    # I

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    return-wide v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 604
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 605
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const/4 v1, 0x1

    return v1

    .line 607
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 608
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    const/4 v1, 0x2

    return v1

    .line 611
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

    .line 538
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getDistractionFlags(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    return v0
.end method

.method getDomainVerificationStatusForUser(I)J
    .locals 6
    .param p1, "userId"    # I

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 652
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    int-to-long v1, v1

    .line 653
    .local v1, "result":J
    iget v3, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 654
    return-wide v1
.end method

.method getEnabled(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 306
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

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getHarmfulAppWarning(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 711
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 712
    .local v0, "userState":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    return-object v1
.end method

.method getHidden(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    return v0
.end method

.method getInstallReason(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->installReason:I

    return v0
.end method

.method getInstalled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    return v0
.end method

.method public getInstantApp(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    return v0
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getNotInstalledUserIds()[I
    .locals 7

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 622
    .local v1, "userStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 623
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageUserState;

    iget-boolean v3, v3, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v3, :cond_0

    .line 624
    add-int/lit8 v0, v0, 0x1

    .line 622
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v2    # "i":I
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    return-object v2

    .line 628
    :cond_2
    new-array v2, v0, [I

    .line 629
    .local v2, "excludedUserIds":[I
    const/4 v3, 0x0

    .line 630
    .local v3, "idx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 631
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState;

    iget-boolean v5, v5, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v5, :cond_3

    .line 632
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .local v5, "idx":I
    iget-object v6, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v3

    move v3, v5

    .line 630
    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 635
    .end local v4    # "i":I
    :cond_4
    return-object v2
.end method

.method getNotLaunched(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return v0
.end method

.method getOverlayPaths(I)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageUserState;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOverlayPathsForLibrary(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method getStopped(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    return v0
.end method

.method getSuspended(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    return v0
.end method

.method getUninstallReason(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    return v0
.end method

.method getUserState()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    return-object v0
.end method

.method getVirtulalPreload(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method isAnyInstalled([I)Z
    .locals 5
    .param p1, "users"    # [I

    .line 362
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 363
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_0

    .line 364
    const/4 v0, 0x1

    return v0

    .line 362
    .end local v3    # "user":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_1
    return v1
.end method

.method public isSharedUser()Z
    .locals 1

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method isSuspendedBy(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 433
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 434
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUpdateAvailable()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    return v0
.end method

.method modifyUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 283
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    .line 284
    new-instance v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v1}, Landroid/content/pm/PackageUserState;-><init>()V

    move-object v0, v1

    .line 285
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    :cond_0
    return-object v0
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    .line 560
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 561
    .local v0, "state":Landroid/content/pm/PackageUserState;
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_0

    .line 562
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 564
    :cond_0
    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_1

    .line 565
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 567
    :cond_1
    return-object v0
.end method

.method public overrideNonLocalizedLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;
    .param p4, "userId"    # I

    .line 723
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageUserState;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method queryInstalledUsers([IZ)[I
    .locals 6
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "num":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 373
    .local v4, "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_0

    .line 374
    add-int/lit8 v0, v0, 0x1

    .line 372
    .end local v4    # "user":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    :cond_1
    new-array v1, v0, [I

    .line 378
    .local v1, "res":[I
    const/4 v0, 0x0

    .line 379
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_3

    aget v4, p1, v2

    .line 380
    .restart local v4    # "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_2

    .line 381
    aput v4, v1, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    .line 379
    .end local v4    # "user":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 385
    :cond_3
    return-object v1
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 292
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    .line 293
    sget-object v1, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-object v1

    .line 295
    :cond_0
    iget v1, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v1, v0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 296
    return-object v0
.end method

.method removeInstallerPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    .line 195
    return-void
.end method

.method removeSuspension(Ljava/lang/String;I)V
    .locals 2
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 451
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 452
    .local v0, "existingUserState":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 455
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 458
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 459
    return-void
.end method

.method removeSuspension(Ljava/util/function/Predicate;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 462
    .local p1, "suspendingPackagePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 463
    .local v0, "existingUserState":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 464
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 465
    iget-object v3, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 466
    .local v3, "suspendingPackage":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    iget-object v4, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 464
    .end local v3    # "suspendingPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 470
    .end local v1    # "i":I
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 471
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 474
    :cond_2
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 475
    return-void
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 616
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 617
    return-void
.end method

.method public resetOverrideComponentLabelIcon(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 732
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageUserState;->resetOverrideComponentLabelIcon()V

    .line 733
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 595
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 596
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 598
    .local v1, "changed":Z
    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_1

    .line 599
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    or-int/2addr v1, v2

    .line 600
    return v1
.end method

.method setCeDataInode(JI)V
    .locals 1
    .param p1, "ceDataInode"    # J
    .param p3, "userId"    # I

    .line 393
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-wide p1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 394
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

    .line 546
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 547
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

    .line 555
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 556
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 557
    return-void
.end method

.method setDistractionFlags(II)V
    .locals 1
    .param p1, "distractionFlags"    # I
    .param p2, "userId"    # I

    .line 425
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 426
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "generation"    # I
    .param p3, "userId"    # I

    .line 658
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 659
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 660
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 661
    iput p2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 663
    :cond_0
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 300
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 301
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 302
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 303
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

    .line 542
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 543
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

    .line 550
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 551
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 552
    return-void
.end method

.method setHarmfulAppWarning(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "harmfulAppWarning"    # Ljava/lang/String;

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 707
    .local v0, "userState":Landroid/content/pm/PackageUserState;
    iput-object p2, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 708
    return-void
.end method

.method setHidden(ZI)V
    .locals 1
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    .line 417
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 418
    return-void
.end method

.method setInstallReason(II)V
    .locals 1
    .param p1, "installReason"    # I
    .param p2, "userId"    # I

    .line 326
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 327
    return-void
.end method

.method public setInstallSource(Lcom/android/server/pm/InstallSource;)V
    .locals 1
    .param p1, "installSource"    # Lcom/android/server/pm/InstallSource;

    .line 190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    .line 191
    return-void
.end method

.method setInstalled(ZI)V
    .locals 1
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    .line 314
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 315
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    .line 187
    return-void
.end method

.method setInstantApp(ZI)V
    .locals 1
    .param p1, "instantApp"    # Z
    .param p2, "userId"    # I

    .line 482
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 483
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    .line 643
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 644
    return-void
.end method

.method public setIsOrphaned(Z)V
    .locals 1
    .param p1, "isOrphaned"    # Z

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    .line 199
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 409
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 410
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

    .line 338
    .local p1, "overlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 339
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 338
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageUserState;->setOverlayPaths([Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method setOverlayPathsForLibrary(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2
    .param p1, "libName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 347
    .local p2, "overlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 348
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 347
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageUserState;->setSharedLibraryOverlayPaths(Ljava/lang/String;[Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method setStopped(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 401
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 402
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "newStamp"    # J

    .line 210
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 211
    return-void
.end method

.method setUninstallReason(II)V
    .locals 1
    .param p1, "uninstallReason"    # I
    .param p2, "userId"    # I

    .line 334
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    .line 335
    return-void
.end method

.method public setUpdateAvailable(Z)V
    .locals 0
    .param p1, "updateAvailable"    # Z

    .line 214
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 215
    return-void
.end method

.method setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIIILjava/lang/String;)V
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
    .param p12, "instantApp"    # Z
    .param p13, "virtualPreload"    # Z
    .param p14, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p17, "domainVerifState"    # I
    .param p18, "linkGeneration"    # I
    .param p19, "installReason"    # I
    .param p20, "uninstallReason"    # I
    .param p21, "harmfulAppWarning"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIZZZZIZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageUserState$SuspendParams;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;IIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 500
    .local p11, "suspendParams":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local p15, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p16, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 501
    .local v0, "state":Landroid/content/pm/PackageUserState;
    move-wide/from16 v1, p2

    iput-wide v1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 502
    move/from16 v3, p4

    iput v3, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 503
    move/from16 v4, p5

    iput-boolean v4, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 504
    move/from16 v5, p6

    iput-boolean v5, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 505
    move/from16 v6, p7

    iput-boolean v6, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 506
    move/from16 v7, p8

    iput-boolean v7, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 507
    move/from16 v8, p9

    iput v8, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 508
    move/from16 v9, p10

    iput-boolean v9, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 509
    move-object/from16 v10, p11

    iput-object v10, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 510
    move-object/from16 v11, p14

    iput-object v11, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 511
    move-object/from16 v12, p15

    iput-object v12, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 512
    move-object/from16 v13, p16

    iput-object v13, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 513
    move/from16 v14, p17

    iput v14, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 514
    move/from16 v15, p18

    iput v15, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 515
    move/from16 v1, p19

    iput v1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 516
    move/from16 v2, p20

    iput v2, v0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    .line 517
    move/from16 v1, p12

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 518
    move/from16 v1, p13

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 519
    move-object/from16 v1, p21

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 520
    return-void
.end method

.method setUserState(ILandroid/content/pm/PackageUserState;)V
    .locals 24
    .param p1, "userId"    # I
    .param p2, "otherState"    # Landroid/content/pm/PackageUserState;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 523
    iget-wide v3, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget v5, v0, Landroid/content/pm/PackageUserState;->enabled:I

    iget-boolean v6, v0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v7, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v8, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v9, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget v10, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    iget-boolean v11, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-object v12, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    iget-boolean v13, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v14, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iget-object v15, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    move/from16 v18, v1

    iget v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    move/from16 v19, v1

    iget v1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    move/from16 v20, v1

    iget v1, v0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    move/from16 v21, v1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    move-object/from16 v22, v1

    move-object/from16 v1, v23

    invoke-virtual/range {v1 .. v22}, Lcom/android/server/pm/PackageSettingBase;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIIILjava/lang/String;)V

    .line 531
    return-void
.end method

.method setVirtualPreload(ZI)V
    .locals 1
    .param p1, "virtualPreload"    # Z
    .param p2, "userId"    # I

    .line 490
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 491
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 203
    return-void
.end method

.method protected updateFrom(Lcom/android/server/pm/PackageSettingBase;)Lcom/android/server/pm/PackageSettingBase;
    .locals 4
    .param p1, "other"    # Lcom/android/server/pm/PackageSettingBase;

    .line 736
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 737
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 738
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 739
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 740
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 741
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 742
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 743
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 744
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 745
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 746
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 747
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 748
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 749
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 750
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 751
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 752
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 753
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 754
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 755
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installSource:Lcom/android/server/pm/InstallSource;

    .line 756
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 757
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 758
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 759
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 760
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->forceQueryableOverride:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->forceQueryableOverride:Z

    .line 762
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 763
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 764
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 765
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 767
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    .line 770
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageUserState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 774
    .end local v0    # "i":I
    :cond_2
    return-object p0
.end method

.method protected writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 671
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 672
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 673
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 674
    .local v2, "userToken":J
    iget-object v4, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 675
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState;

    .line 676
    .local v5, "state":Landroid/content/pm/PackageUserState;
    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 678
    iget-boolean v6, v5, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v6, :cond_0

    .line 679
    const/4 v6, 0x2

    .local v6, "installType":I
    goto :goto_1

    .line 680
    .end local v6    # "installType":I
    :cond_0
    iget-boolean v6, v5, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v6, :cond_1

    .line 681
    const/4 v6, 0x1

    .restart local v6    # "installType":I
    goto :goto_1

    .line 683
    .end local v6    # "installType":I
    :cond_1
    const/4 v6, 0x0

    .line 685
    .restart local v6    # "installType":I
    :goto_1
    const-wide v7, 0x10e00000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 686
    const-wide v7, 0x10800000003L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->hidden:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 687
    const-wide v7, 0x1050000000aL

    iget v9, v5, Landroid/content/pm/PackageUserState;->distractionFlags:I

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 688
    const-wide v7, 0x10800000004L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->suspended:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 689
    iget-boolean v7, v5, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v7, :cond_2

    .line 690
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    iget-object v8, v5, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 691
    const-wide v8, 0x20900000009L

    iget-object v10, v5, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 692
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 691
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 690
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 695
    .end local v7    # "j":I
    :cond_2
    const-wide v7, 0x10800000005L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->stopped:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 696
    const-wide v7, 0x10800000006L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->notLaunched:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 697
    const-wide v7, 0x10e00000007L

    iget v9, v5, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 698
    const-wide v7, 0x10900000008L

    iget-object v9, v5, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 701
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 672
    .end local v2    # "userToken":J
    .end local v4    # "userId":I
    .end local v5    # "state":Landroid/content/pm/PackageUserState;
    .end local v6    # "installType":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 703
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
