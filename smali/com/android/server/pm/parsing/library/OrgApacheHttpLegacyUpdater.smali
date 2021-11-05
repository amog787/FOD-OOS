.class public Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "OrgApacheHttpLegacyUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method

.method private static apkTargetsApiLevelLessThanOrEqualToOMR1(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 36
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 1
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 44
    invoke-static {p1}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;->apkTargetsApiLevelLessThanOrEqualToOMR1(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v0, "org.apache.http.legacy"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;->prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method
