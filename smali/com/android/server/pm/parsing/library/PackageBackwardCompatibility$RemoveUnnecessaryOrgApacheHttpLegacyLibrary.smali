.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUnnecessaryOrgApacheHttpLegacyLibrary"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 1
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 169
    const-string/jumbo v0, "org.apache.http.legacy"

    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;->removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 170
    return-void
.end method
