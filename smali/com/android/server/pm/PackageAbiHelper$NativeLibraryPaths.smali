.class public final Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
.super Ljava/lang/Object;
.source "PackageAbiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageAbiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeLibraryPaths"
.end annotation


# instance fields
.field public final nativeLibraryDir:Ljava/lang/String;

.field public final nativeLibraryRootDir:Ljava/lang/String;

.field public final nativeLibraryRootRequiresIsa:Z

.field public final secondaryNativeLibraryDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nativeLibraryRootDir"    # Ljava/lang/String;
    .param p2, "nativeLibraryRootRequiresIsa"    # Z
    .param p3, "nativeLibraryDir"    # Ljava/lang/String;
    .param p4, "secondaryNativeLibraryDir"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 91
    iput-boolean p2, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 92
    iput-object p3, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryDir:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 98
    invoke-interface {v0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryDir:Ljava/lang/String;

    .line 99
    invoke-interface {v0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 100
    invoke-interface {v0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 101
    return-void
.end method
