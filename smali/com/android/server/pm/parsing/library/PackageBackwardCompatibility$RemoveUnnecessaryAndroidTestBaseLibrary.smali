.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUnnecessaryAndroidTestBaseLibrary"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 1
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 184
    const-string v0, "android.test.base"

    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;->removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 185
    return-void
.end method
