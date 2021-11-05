.class public interface abstract Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.super Ljava/lang/Object;
.source "ParsedPackage.java"

# interfaces
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackage;


# virtual methods
.method public abstract addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract removePermission(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setBaseCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setOdm(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setOem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setPersistent(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setProduct(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSeInfoUser(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setStub(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSystem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setUid(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setVendor(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setVersionCode(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method
