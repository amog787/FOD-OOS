.class public interface abstract Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.super Ljava/lang/Object;
.source "AndroidPackage.java"

# interfaces
.implements Lcom/android/server/pm/parsing/pkg/PkgAppInfo;
.implements Lcom/android/server/pm/parsing/pkg/PkgPackageInfo;
.implements Landroid/content/pm/parsing/ParsingPackageRead;
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getAdoptPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBaseCodePath()Ljava/lang/String;
.end method

.method public abstract getBaseRevisionCode()I
.end method

.method public abstract getCodePath()Ljava/lang/String;
.end method

.method public abstract getImplicitPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeySetMapping()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLibraryNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getManifestPackageName()Ljava/lang/String;
.end method

.method public abstract getMetaData()Landroid/os/Bundle;
.end method

.method public abstract getOriginalPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOverlayables()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPermissionGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreferredActivityFilters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getProtectedBroadcasts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueriesIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueriesPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRealPackage()Ljava/lang/String;
.end method

.method public abstract getRestrictUpdateHash()[B
.end method

.method public abstract getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
.end method

.method public abstract getSplitFlags()[I
.end method

.method public abstract getSplitNames()[Ljava/lang/String;
.end method

.method public abstract getStaticSharedLibName()Ljava/lang/String;
.end method

.method public abstract getStaticSharedLibVersion()J
.end method

.method public abstract getStorageUuid()Ljava/util/UUID;
.end method

.method public abstract getUpgradeKeySets()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesOptionalLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesStaticLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
.end method

.method public abstract getUsesStaticLibrariesVersions()[J
.end method

.method public abstract isCrossProfile()Z
.end method

.method public abstract isForceQueryable()Z
.end method

.method public abstract isUse32BitAbi()Z
.end method

.method public abstract isVisibleToInstantApps()Z
.end method

.method public abstract toAppInfoToString()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
.end method
