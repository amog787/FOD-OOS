.class public Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "AndroidTestBaseUpdater.java"


# static fields
.field private static final REMOVE_ANDROID_TEST_BASE:J = 0x7f379d2L

.field private static final TAG:Ljava/lang/String; = "AndroidTestBaseUpdater"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method

.method private static isChangeEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 61
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    nop

    .line 63
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 65
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    const-wide/32 v1, 0x7f379d2

    .line 66
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 65
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AndroidTestBaseUpdater"

    const-string v3, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0    # "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 80
    invoke-static {p1}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;->isChangeEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    const-string v1, "android.test.base"

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;->prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "android.test.runner"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;->prefixImplicitDependency(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void
.end method
