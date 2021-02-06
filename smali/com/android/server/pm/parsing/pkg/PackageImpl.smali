.class public final Lcom/android/server/pm/parsing/pkg/PackageImpl;
.super Landroid/content/pm/parsing/ParsingPackageImpl;
.source "PackageImpl.java"

# interfaces
.implements Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackage;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/parsing/pkg/PackageImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coreApp:Z

.field private factoryTest:Z

.field private final manifestPackageName:Ljava/lang/String;

.field protected nativeLibraryDir:Ljava/lang/String;

.field protected nativeLibraryRootDir:Ljava/lang/String;

.field private nativeLibraryRootRequiresIsa:Z

.field private odm:Z

.field private oem:Z

.field protected primaryCpuAbi:Ljava/lang/String;

.field private privileged:Z

.field private product:Z

.field protected seInfo:Ljava/lang/String;

.field protected seInfoUser:Ljava/lang/String;

.field protected secondaryCpuAbi:Ljava/lang/String;

.field protected secondaryNativeLibraryDir:Ljava/lang/String;

.field private signedWithPlatformKey:Z

.field private stub:Z

.field private system:Z

.field private systemExt:Z

.field private uid:I

.field private vendor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 529
    new-instance v0, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 505
    invoke-direct {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;-><init>(Landroid/os/Parcel;)V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 506
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->stub:Z

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 511
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 512
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->coreApp:Z

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->system:Z

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->factoryTest:Z

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->systemExt:Z

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->privileged:Z

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->oem:Z

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->vendor:Z

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->product:Z

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->odm:Z

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signedWithPlatformKey:Z

    .line 527
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "manifestArray"    # Landroid/content/res/TypedArray;
    .param p5, "isCoreApp"    # Z

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/pm/parsing/ParsingPackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 142
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 143
    iput-boolean p5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->coreApp:Z

    .line 144
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    return-void
.end method

.method public static buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1}, Landroid/content/pm/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/pm/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 73
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public static forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "manifestArray"    # Landroid/content/res/TypedArray;
    .param p4, "isCoreApp"    # Z

    .line 56
    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method

.method public static forTesting(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 78
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    return-object v0
.end method

.method public static forTesting(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 83
    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method


# virtual methods
.method public addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2
    .param p1, "index"    # I
    .param p2, "libraryName"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 178
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 179
    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2
    .param p1, "index"    # I
    .param p2, "libraryName"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 172
    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 386
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->setPriority(I)V

    .line 386
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 390
    .end local v1    # "index":I
    :cond_0
    return-object p0
.end method

.method public bridge synthetic capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    return-object p0
.end method

.method public bridge synthetic clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    return-object p0
.end method

.method public bridge synthetic clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    return-object p0
.end method

.method public bridge synthetic clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getLongVersionCode()J
    .locals 2

    .line 159
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getManifestPackageName()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeLibraryDir()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeLibraryRootDir()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSeInfo()Ljava/lang/String;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSeInfoUser()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryNativeLibraryDir()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageUuid()Ljava/util/UUID;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 654
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    return v0
.end method

.method public hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 0

    .line 154
    return-object p0
.end method

.method public hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 148
    return-object p0
.end method

.method public bridge synthetic hideAsParsed()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public isCoreApp()Z
    .locals 1

    .line 601
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->coreApp:Z

    return v0
.end method

.method public isFactoryTest()Z
    .locals 1

    .line 611
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->factoryTest:Z

    return v0
.end method

.method public isNativeLibraryRootRequiresIsa()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return v0
.end method

.method public isOdm()Z
    .locals 1

    .line 641
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->odm:Z

    return v0
.end method

.method public isOem()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->oem:Z

    return v0
.end method

.method public isPrivileged()Z
    .locals 1

    .line 621
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->privileged:Z

    return v0
.end method

.method public isProduct()Z
    .locals 1

    .line 636
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->product:Z

    return v0
.end method

.method public isSignedWithPlatformKey()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signedWithPlatformKey:Z

    return v0
.end method

.method public isStub()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->stub:Z

    return v0
.end method

.method public isSystem()Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->system:Z

    return v0
.end method

.method public isSystemExt()Z
    .locals 1

    .line 616
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->systemExt:Z

    return v0
.end method

.method public isVendor()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->vendor:Z

    return v0
.end method

.method public markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 8

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 397
    .local v0, "receiversSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v0, :cond_1

    .line 398
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 399
    .local v4, "receiver":Landroid/content/pm/parsing/component/ParsedActivity;
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {v4, v2}, Landroid/content/pm/parsing/component/ParsedActivity;->setExported(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 397
    .end local v4    # "receiver":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 406
    .local v1, "servicesSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 407
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedService;

    .line 408
    .local v5, "service":Landroid/content/pm/parsing/component/ParsedService;
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedService;->getFlags()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    .line 409
    invoke-virtual {v5, v2}, Landroid/content/pm/parsing/component/ParsedService;->setExported(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 406
    .end local v5    # "service":Landroid/content/pm/parsing/component/ParsedService;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 414
    .end local v4    # "index":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 415
    .local v4, "providersSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_2
    if-ge v5, v4, :cond_5

    .line 416
    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 417
    .local v6, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedProvider;->getFlags()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_4

    .line 418
    invoke-virtual {v6, v2}, Landroid/content/pm/parsing/component/ParsedProvider;->setExported(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 415
    .end local v6    # "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 422
    .end local v5    # "index":I
    :cond_5
    return-object p0
.end method

.method public bridge synthetic markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "index"    # I

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    return-object p0
.end method

.method public bridge synthetic removePermission(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 185
    return-object p0
.end method

.method public bridge synthetic removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 190
    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    .line 191
    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 6
    .param p1, "allComponentsDirectBootAware"    # Z

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 301
    .local v0, "activitiesSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v2, p1}, Landroid/content/pm/parsing/component/ParsedActivity;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 306
    .local v1, "receiversSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 307
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v3, p1}, Landroid/content/pm/parsing/component/ParsedActivity;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    .end local v2    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 311
    .local v2, "providersSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 312
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-virtual {v4, p1}, Landroid/content/pm/parsing/component/ParsedProvider;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 315
    .end local v3    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 316
    .local v3, "servicesSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 317
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v5, p1}, Landroid/content/pm/parsing/component/ParsedService;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 316
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 320
    .end local v4    # "index":I
    :cond_3
    return-object p0
.end method

.method public bridge synthetic setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBaseCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->baseCodePath:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public bridge synthetic setBaseCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBaseCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->codePath:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public bridge synthetic setCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .param p1, "coreApp"    # Z

    .line 440
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->coreApp:Z

    .line 441
    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 220
    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    .line 221
    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 226
    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    .line 227
    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 677
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->factoryTest:Z

    .line 678
    return-object p0
.end method

.method public bridge synthetic setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "nativeLibraryDir"    # Ljava/lang/String;

    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public bridge synthetic setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "nativeLibraryRootDir"    # Ljava/lang/String;

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 665
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 666
    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 713
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->odm:Z

    .line 714
    return-object p0
.end method

.method public bridge synthetic setOdm(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 695
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->oem:Z

    .line 696
    return-object p0
.end method

.method public bridge synthetic setOem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 261
    .local v0, "permissionsSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/parsing/component/ParsedPermission;->setPackageName(Ljava/lang/String;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 266
    .local v1, "permissionGroupsSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->setPackageName(Ljava/lang/String;)V

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 270
    .end local v2    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 271
    .local v2, "activitiesSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 272
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedActivity;

    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/parsing/component/ParsedActivity;->setPackageName(Ljava/lang/String;)V

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 275
    .end local v3    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 276
    .local v3, "receiversSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 277
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/parsing/component/ParsedActivity;->setPackageName(Ljava/lang/String;)V

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 280
    .end local v4    # "index":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 281
    .local v4, "providersSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_4
    if-ge v5, v4, :cond_4

    .line 282
    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedProvider;

    iget-object v7, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/parsing/component/ParsedProvider;->setPackageName(Ljava/lang/String;)V

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 285
    .end local v5    # "index":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 286
    .local v5, "servicesSize":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_5
    if-ge v6, v5, :cond_5

    .line 287
    iget-object v7, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/component/ParsedService;

    iget-object v8, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/parsing/component/ParsedService;->setPackageName(Ljava/lang/String;)V

    .line 286
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 290
    .end local v6    # "index":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 291
    .local v6, "instrumentationsSize":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_6
    if-ge v7, v6, :cond_6

    .line 292
    iget-object v8, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    iget-object v9, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->setPackageName(Ljava/lang/String;)V

    .line 291
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 295
    .end local v7    # "index":I
    :cond_6
    return-object p0
.end method

.method public bridge synthetic setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPersistent(Z)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPersistent(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 214
    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setPersistent(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    .line 215
    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "primaryCpuAbi"    # Ljava/lang/String;

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public bridge synthetic setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 689
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->privileged:Z

    .line 690
    return-object p0
.end method

.method public bridge synthetic setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 707
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->product:Z

    .line 708
    return-object p0
.end method

.method public bridge synthetic setProduct(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "realPackage"    # Ljava/lang/String;

    .line 208
    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    .line 209
    return-object p0
.end method

.method public bridge synthetic setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # [B

    .line 202
    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackageImpl;

    .line 203
    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "seInfo"    # Ljava/lang/String;

    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    .line 362
    return-object p0
.end method

.method public bridge synthetic setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSeInfoUser(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "seInfoUser"    # Ljava/lang/String;

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public bridge synthetic setSeInfoUser(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSeInfoUser(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "secondaryCpuAbi"    # Ljava/lang/String;

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 350
    return-object p0
.end method

.method public bridge synthetic setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1
    .param p1, "secondaryNativeLibraryDir"    # Ljava/lang/String;

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public bridge synthetic setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 719
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signedWithPlatformKey:Z

    .line 720
    return-object p0
.end method

.method public bridge synthetic setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 196
    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackageImpl;

    .line 197
    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 4
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    .line 373
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 374
    if-eqz p1, :cond_0

    .line 375
    array-length v0, p1

    .line 376
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 659
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->stub:Z

    .line 660
    return-object p0
.end method

.method public bridge synthetic setStub(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 671
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->system:Z

    .line 672
    return-object p0
.end method

.method public bridge synthetic setSystem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 683
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->systemExt:Z

    .line 684
    return-object p0
.end method

.method public bridge synthetic setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # I

    .line 728
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 729
    return-object p0
.end method

.method public bridge synthetic setUid(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0
    .param p1, "value"    # Z

    .line 701
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->vendor:Z

    .line 702
    return-object p0
.end method

.method public bridge synthetic setVendor(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVersionCode(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .param p1, "versionCode"    # I

    .line 446
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 447
    return-object p0
.end method

.method public setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .param p1, "versionCodeMajor"    # I

    .line 452
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 453
    return-object p0
.end method

.method public toAppInfoToString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    return-object v0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 458
    invoke-super {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 459
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 460
    invoke-static {p0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 461
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 463
    iget-boolean v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 464
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 465
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 466
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 468
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 469
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 470
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 480
    invoke-super {p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 481
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 482
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->stub:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 487
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 488
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->coreApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->system:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 494
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->factoryTest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 495
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->systemExt:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 496
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->privileged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 497
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->oem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 498
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->vendor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 499
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->product:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 500
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->odm:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 501
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signedWithPlatformKey:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 502
    return-void
.end method
