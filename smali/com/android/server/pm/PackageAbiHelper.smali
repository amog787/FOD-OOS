.class public interface abstract Lcom/android/server/pm/PackageAbiHelper;
.super Ljava/lang/Object;
.source "PackageAbiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageAbiHelper$Abis;,
        Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    }
.end annotation


# virtual methods
.method public abstract derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Z)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageAbiHelper$Abis;",
            "Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation
.end method

.method public abstract getAdjustedAbiForSharedUser(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
.end method

.method public abstract getNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
.end method
