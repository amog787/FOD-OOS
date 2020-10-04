.class Lcom/android/server/pm/InstantAppRegistry;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;,
        Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    }
.end annotation


# static fields
.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field static final DEFAULT_INSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field private static final DEFAULT_UNINSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field static final DEFAULT_UNINSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field private static final INSTANT_APPS_FOLDER:Ljava/lang/String; = "instant"

.field private static final INSTANT_APP_ANDROID_ID_FILE:Ljava/lang/String; = "android_id"

.field private static final INSTANT_APP_COOKIE_FILE_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final INSTANT_APP_COOKIE_FILE_SIFFIX:Ljava/lang/String; = ".dat"

.field private static final INSTANT_APP_ICON_FILE:Ljava/lang/String; = "icon.png"

.field private static final INSTANT_APP_METADATA_FILE:Ljava/lang/String; = "metadata.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "InstantAppRegistry"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field private final mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

.field private mInstalledInstantAppUids:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mInstantGrants:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mUninstalledInstantApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 204
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 134
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;-><init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 135
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 80
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 80
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/InstantAppRegistry;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/io/File;
    .param p4, "x4"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppRegistry;->persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method private addUninstalledInstantAppLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    .line 495
    .local v0, "uninstalledApp":Landroid/content/pm/InstantAppInfo;
    if-nez v0, :cond_0

    .line 496
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 499
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 502
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 503
    .local v1, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v1, :cond_2

    .line 504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 505
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    :cond_2
    new-instance v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V

    .line 509
    .local v2, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeInstantApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 513
    return-void
.end method

.method private static computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sha256Digest"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1019
    invoke-static {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1020
    .local v0, "appDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "cookieFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I
    .param p3, "addApplicationInfo"    # Z

    .line 845
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 846
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 847
    return-object v1

    .line 849
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 850
    return-object v1

    .line 853
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 854
    .local v1, "requestedPermissions":[Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 856
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v2

    .line 857
    .local v2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 858
    .local v3, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 860
    if-eqz p3, :cond_2

    .line 861
    new-instance v4, Landroid/content/pm/InstantAppInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v5, v1, v3}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 864
    :cond_2
    new-instance v4, Landroid/content/pm/InstantAppInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 865
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1, v3}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 864
    return-object v4
.end method

.method private static deleteDir(Ljava/io/File;)V
    .locals 4
    .param p0, "dir"    # Ljava/io/File;

    .line 1156
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1157
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1158
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1159
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 1158
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1163
    return-void
.end method

.method private generateInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 235
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 236
    .local v0, "randomBytes":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 237
    invoke-static {v0}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "id":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 239
    .local v2, "appDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "InstantAppRegistry"

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    const-string v3, "Cannot create instant app cookie directory"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v1

    .line 243
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    const-string v6, "android_id"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v3, "idFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 246
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    invoke-static {v6, v5}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 249
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 245
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .end local v0    # "randomBytes":[B
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "appDir":Ljava/io/File;
    .end local v3    # "idFile":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    .restart local v0    # "randomBytes":[B
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "appDir":Ljava/io/File;
    .restart local v3    # "idFile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v6, v5}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "randomBytes":[B
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "appDir":Ljava/io/File;
    .end local v3    # "idFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "randomBytes":[B
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "appDir":Ljava/io/File;
    .restart local v3    # "idFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_0
    move-exception v5

    .line 248
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing instant app android id file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1
.end method

.method private getInstalledInstantApplicationsLPr(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 818
    const/4 v0, 0x0

    .line 820
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 821
    .local v1, "packageCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 822
    iget-object v3, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 823
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 824
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 825
    goto :goto_1

    .line 827
    :cond_0
    const/4 v5, 0x1

    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v5

    .line 829
    .local v5, "info":Landroid/content/pm/InstantAppInfo;
    if-nez v5, :cond_1

    .line 830
    goto :goto_1

    .line 832
    :cond_1
    if-nez v0, :cond_2

    .line 833
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 835
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "info":Landroid/content/pm/InstantAppInfo;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 838
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method

.method private static getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1152
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getInstantApplicationsDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 1147
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "instant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUninstalledInstantAppStatesLPr(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;"
        }
    .end annotation

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 949
    if-eqz v0, :cond_0

    .line 950
    return-object v0

    .line 954
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v1

    .line 955
    .local v1, "instantAppsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 956
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 957
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_4

    .line 958
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 959
    .local v5, "instantDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 960
    goto :goto_1

    .line 962
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "metadata.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 964
    .local v6, "metadataFile":Ljava/io/File;
    nop

    .line 965
    invoke-static {v6}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v7

    .line 966
    .local v7, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v7, :cond_2

    .line 967
    goto :goto_1

    .line 969
    :cond_2
    if-nez v0, :cond_3

    .line 970
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    .line 972
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    .end local v5    # "instantDir":Ljava/io/File;
    .end local v6    # "metadataFile":Ljava/io/File;
    .end local v7    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 977
    .end local v2    # "files":[Ljava/io/File;
    :cond_4
    if-eqz v0, :cond_6

    .line 978
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v2, :cond_5

    .line 979
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 981
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 984
    :cond_6
    return-object v0
.end method

.method private getUninstalledInstantApplicationsLPr(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 873
    nop

    .line 874
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantAppStatesLPr(I)Ljava/util/List;

    move-result-object v0

    .line 875
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 879
    :cond_0
    const/4 v1, 0x0

    .line 880
    .local v1, "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 881
    .local v2, "stateCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 882
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 883
    .local v4, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v1, :cond_1

    .line 884
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 886
    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v4    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 888
    .end local v3    # "i":I
    :cond_2
    return-object v1

    .line 876
    .end local v1    # "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    .end local v2    # "stateCount":I
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasInstantAppMetadataLPr(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 617
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 618
    .local v0, "instantAppDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "icon.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 621
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 618
    :goto_1
    return v1
.end method

.method private hasUninstalledInstantAppStateLPr(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 599
    return v1

    .line 601
    :cond_0
    nop

    .line 602
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 603
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v0, :cond_1

    .line 604
    return v1

    .line 606
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 607
    .local v2, "appCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 608
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 609
    .local v4, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    iget-object v5, v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v5}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 610
    const/4 v1, 0x1

    return v1

    .line 607
    .end local v4    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 613
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method static synthetic lambda$deleteInstantApplicationMetadataLPw$1(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 555
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPackageInstalledLPw$0(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 290
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$pruneInstantApps$3(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .locals 4
    .param p0, "maxUninstalledCacheDuration"    # J
    .param p2, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    sub-long/2addr v0, v2

    .line 778
    .local v0, "elapsedCachingMillis":J
    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1049
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1050
    .local v0, "outerDepth":I
    :cond_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1051
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v1

    return-object v1

    .line 1055
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    .locals 9
    .param p0, "metadataFile"    # Ljava/io/File;

    .line 989
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 990
    return-object v1

    .line 994
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 998
    .local v0, "in":Ljava/io/FileInputStream;
    nop

    .line 1000
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1001
    .local v1, "instantDir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1002
    .local v2, "timestamp":J
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1005
    .local v4, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1006
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1007
    new-instance v6, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1008
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1007
    return-object v6

    .line 1013
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v5

    .line 1010
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing instant metadata file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "instantDir":Ljava/io/File;
    .end local v2    # "timestamp":J
    .end local v4    # "packageName":Ljava/lang/String;
    .end local p0    # "metadataFile":Ljava/io/File;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "instantDir":Ljava/io/File;
    .restart local v2    # "timestamp":J
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local p0    # "metadataFile":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 995
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "instantDir":Ljava/io/File;
    .end local v2    # "timestamp":J
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 996
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "InstantAppRegistry"

    const-string v3, "No instant metadata file"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-object v1
.end method

.method private static parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1061
    const/4 v0, 0x0

    const-string/jumbo v1, "label"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .local v1, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1067
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1068
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1069
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/InstantAppRegistry;->parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1073
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 1074
    .local v4, "requestedPermissions":[Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1076
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 1077
    .local v5, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1079
    new-instance v6, Landroid/content/pm/InstantAppInfo;

    invoke-direct {v6, p1, v0, v4, v5}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v6
.end method

.method private static parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1087
    .local p1, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1088
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1091
    .local v1, "permission":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    const-string v2, "granted"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1093
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1097
    :cond_2
    return-void
.end method

.method private static peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1027
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1028
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1029
    return-object v2

    .line 1031
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1032
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 1033
    return-object v2

    .line 1035
    :cond_1
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 1036
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1037
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cookie_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1038
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1039
    return-object v5

    .line 1035
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1042
    :cond_3
    return-object v2
.end method

.method private peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 918
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 919
    nop

    .line 920
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 921
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-eqz v0, :cond_1

    .line 922
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 923
    .local v1, "appCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 924
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 925
    .local v3, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    iget-object v4, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 926
    invoke-virtual {v4}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 927
    iget-object v4, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object v4

    .line 923
    .end local v3    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    .end local v0    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    .end local v1    # "appCount":I
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 935
    .local v0, "metadataFile":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v1

    .line 936
    .local v1, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v1, :cond_2

    .line 937
    const/4 v2, 0x0

    return-object v2

    .line 940
    :cond_2
    iget-object v2, v1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object v2
.end method

.method private persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V
    .locals 4
    .param p1, "cookie"    # [B
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cookieFile"    # Ljava/io/File;
    .param p4, "userId"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {p2, p4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 188
    .local v1, "appDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const-string v2, "InstantAppRegistry"

    const-string v3, "Cannot create instant app cookie directory"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v0

    return-void

    .line 193
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    const-string v2, "InstantAppRegistry"

    const-string v3, "Cannot delete instant app cookie file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    if-eqz p1, :cond_3

    array-length v2, p1

    if-gtz v2, :cond_2

    goto :goto_1

    .line 201
    .end local v1    # "appDir":Ljava/io/File;
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 202
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 203
    const/4 v2, 0x0

    :try_start_2
    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    invoke-static {v1, v0}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 206
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 202
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "cookie":[B
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "cookieFile":Ljava/io/File;
    .end local p4    # "userId":I
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "cookie":[B
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "cookieFile":Ljava/io/File;
    .restart local p4    # "userId":I
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v1, v0}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "cookie":[B
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "cookieFile":Ljava/io/File;
    .end local p4    # "userId":I
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "cookie":[B
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "cookieFile":Ljava/io/File;
    .restart local p4    # "userId":I
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing instant app cookie file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstantAppRegistry"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 199
    .restart local v1    # "appDir":Ljava/io/File;
    :cond_3
    :goto_1
    :try_start_6
    monitor-exit v0

    return-void

    .line 201
    .end local v1    # "appDir":Ljava/io/File;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private propagateInstantAppPermissionsIfNeeded(Landroid/content/pm/PackageParser$Package;I)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 893
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    .line 895
    .local v0, "appInfo":Landroid/content/pm/InstantAppInfo;
    if-nez v0, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    return-void

    .line 901
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 903
    .local v1, "identity":J
    :try_start_0
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 904
    .local v6, "grantedPermission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 905
    invoke-virtual {v7, v6}, Lcom/android/server/pm/Settings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v7

    .line 906
    .local v7, "propagatePermission":Z
    if-eqz v7, :cond_2

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 907
    iget-object v8, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, p2}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    .end local v6    # "grantedPermission":Ljava/lang/String;
    .end local v7    # "propagatePermission":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 911
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    nop

    .line 913
    return-void

    .line 911
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private pruneInstantApps(JJJ)Z
    .locals 26
    .param p1, "neededSpace"    # J
    .param p3, "maxInstalledCacheDuration"    # J
    .param p5, "maxUninstalledCacheDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    move-object/from16 v1, p0

    move-wide/from16 v2, p5

    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 677
    .local v4, "storage":Landroid/os/storage/StorageManager;
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 679
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    cmp-long v0, v6, p1

    const/4 v6, 0x1

    if-ltz v0, :cond_0

    .line 680
    return v6

    .line 683
    :cond_0
    const/4 v7, 0x0

    .line 686
    .local v7, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 689
    .local v8, "now":J
    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 690
    :try_start_0
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    move-object v11, v0

    .line 692
    .local v11, "allUsers":[I
    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 693
    .local v0, "packageCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_8

    .line 694
    :try_start_1
    iget-object v14, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Package;

    .line 695
    .local v14, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v14}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v15

    sub-long v15, v8, v15

    cmp-long v15, v15, p3

    if-gez v15, :cond_1

    .line 696
    move/from16 v19, v0

    goto :goto_4

    .line 698
    :cond_1
    iget-object v15, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v15, v15, Lcom/android/server/pm/PackageSetting;

    if-nez v15, :cond_2

    .line 699
    move/from16 v19, v0

    goto :goto_4

    .line 701
    :cond_2
    iget-object v15, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 702
    .local v15, "ps":Lcom/android/server/pm/PackageSetting;
    const/16 v16, 0x0

    .line 703
    .local v16, "installedOnlyAsInstantApp":Z
    array-length v13, v11

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v13, :cond_5

    aget v17, v11, v6

    move/from16 v18, v17

    .line 704
    .local v18, "userId":I
    move/from16 v19, v0

    move/from16 v0, v18

    .end local v18    # "userId":I
    .local v0, "userId":I
    .local v19, "packageCount":I
    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 705
    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 706
    const/16 v16, 0x1

    goto :goto_2

    .line 708
    :cond_3
    const/16 v16, 0x0

    .line 709
    goto :goto_3

    .line 703
    .end local v0    # "userId":I
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v19

    goto :goto_1

    .end local v19    # "packageCount":I
    .local v0, "packageCount":I
    :cond_5
    move/from16 v19, v0

    .line 713
    .end local v0    # "packageCount":I
    .restart local v19    # "packageCount":I
    :goto_3
    if-eqz v16, :cond_7

    .line 714
    if-nez v7, :cond_6

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 717
    :cond_6
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v14    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v15    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "installedOnlyAsInstantApp":Z
    :cond_7
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v19

    const/4 v6, 0x1

    goto :goto_0

    .line 755
    .end local v11    # "allUsers":[I
    .end local v12    # "i":I
    .end local v19    # "packageCount":I
    :catchall_0
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_b

    .line 693
    .restart local v0    # "packageCount":I
    .restart local v11    # "allUsers":[I
    .restart local v12    # "i":I
    :cond_8
    move/from16 v19, v0

    .line 721
    .end local v0    # "packageCount":I
    .end local v12    # "i":I
    .restart local v19    # "packageCount":I
    if-eqz v7, :cond_9

    .line 722
    new-instance v0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;

    invoke-direct {v0, v1}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    invoke-interface {v7, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    .end local v19    # "packageCount":I
    :cond_9
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 757
    if-eqz v7, :cond_b

    .line 758
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 759
    .restart local v0    # "packageCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v0, :cond_b

    .line 760
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 761
    .local v10, "packageToDelete":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x2

    move-object/from16 v18, v12

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 764
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v14

    cmp-long v12, v14, p1

    if-ltz v12, :cond_a

    .line 765
    return v13

    .line 759
    .end local v10    # "packageToDelete":Ljava/lang/String;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 772
    .end local v0    # "packageCount":I
    .end local v6    # "i":I
    :cond_b
    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 774
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v10, v0

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_13

    aget v13, v0, v12

    .line 776
    .local v13, "userId":I
    new-instance v14, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$BuKCbLr_MGBazMPl54-pWTuGHYY;

    invoke-direct {v14, v2, v3}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$BuKCbLr_MGBazMPl54-pWTuGHYY;-><init>(J)V

    invoke-direct {v1, v14, v13}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 782
    invoke-static {v13}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v14

    .line 783
    .local v14, "instantAppsDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_c

    .line 784
    move-object/from16 v16, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    const/4 v4, 0x1

    goto/16 :goto_9

    .line 786
    :cond_c
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 787
    .local v15, "files":[Ljava/io/File;
    if-nez v15, :cond_d

    .line 788
    move-object/from16 v16, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    const/4 v4, 0x1

    goto/16 :goto_9

    .line 790
    :cond_d
    move-object/from16 v16, v0

    array-length v0, v15

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_12

    aget-object v18, v15, v1

    move-object/from16 v19, v18

    .line 791
    .local v19, "instantDir":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_e

    .line 792
    move/from16 v18, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    const/4 v4, 0x1

    goto :goto_8

    .line 795
    :cond_e
    move/from16 v18, v0

    new-instance v0, Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v20, v4

    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .local v20, "storage":Landroid/os/storage/StorageManager;
    :try_start_4
    const-string/jumbo v4, "metadata.xml"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v21, v7

    move-object/from16 v7, v19

    .end local v19    # "instantDir":Ljava/io/File;
    .local v7, "instantDir":Ljava/io/File;
    .local v21, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    invoke-direct {v0, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 796
    .local v0, "metadataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    .line 797
    const/4 v4, 0x1

    goto :goto_8

    .line 800
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 801
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    sub-long v22, v22, v24

    .line 802
    .local v22, "elapsedCachingMillis":J
    cmp-long v4, v22, v2

    if-lez v4, :cond_11

    .line 803
    invoke-static {v7}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 804
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v24

    cmp-long v4, v24, p1

    if-ltz v4, :cond_10

    .line 805
    monitor-exit v6

    const/4 v4, 0x1

    return v4

    .line 804
    :cond_10
    const/4 v4, 0x1

    goto :goto_8

    .line 802
    :cond_11
    const/4 v4, 0x1

    .line 790
    .end local v0    # "metadataFile":Ljava/io/File;
    .end local v7    # "instantDir":Ljava/io/File;
    .end local v22    # "elapsedCachingMillis":J
    :goto_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v18

    move-object/from16 v4, v20

    move-object/from16 v7, v21

    goto :goto_7

    .line 810
    .end local v13    # "userId":I
    .end local v14    # "instantAppsDir":Ljava/io/File;
    .end local v15    # "files":[Ljava/io/File;
    .end local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v21, v7

    .end local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_a

    .line 790
    .end local v20    # "storage":Landroid/os/storage/StorageManager;
    .end local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "userId":I
    .restart local v14    # "instantAppsDir":Ljava/io/File;
    .restart local v15    # "files":[Ljava/io/File;
    :cond_12
    move-object/from16 v20, v4

    move-object/from16 v21, v7

    const/4 v4, 0x1

    .line 774
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "userId":I
    .end local v14    # "instantAppsDir":Ljava/io/File;
    .end local v15    # "files":[Ljava/io/File;
    .restart local v20    # "storage":Landroid/os/storage/StorageManager;
    .restart local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v4, v20

    move-object/from16 v7, v21

    goto/16 :goto_6

    .line 810
    .end local v20    # "storage":Landroid/os/storage/StorageManager;
    .end local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v20, v4

    move-object/from16 v21, v7

    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "storage":Landroid/os/storage/StorageManager;
    .restart local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v6

    .line 812
    const/4 v0, 0x0

    return v0

    .line 810
    .end local v20    # "storage":Landroid/os/storage/StorageManager;
    .end local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "storage":Landroid/os/storage/StorageManager;
    .restart local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_a
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_a

    .line 755
    .end local v11    # "allUsers":[I
    .end local v20    # "storage":Landroid/os/storage/StorageManager;
    .end local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "storage":Landroid/os/storage/StorageManager;
    .restart local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_b

    .end local v20    # "storage":Landroid/os/storage/StorageManager;
    .end local v21    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v20, v4

    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v20    # "storage":Landroid/os/storage/StorageManager;
    :goto_b
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_b
.end method

.method private removeAppLPw(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "targetAppId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 484
    .local v0, "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v0, :cond_1

    .line 485
    return-void

    .line 487
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 488
    return-void
.end method

.method private removeInstantAppLPw(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "instantAppId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 455
    return-void

    .line 457
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 458
    .local v0, "instantAppList":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_1

    .line 459
    return-void

    .line 462
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 465
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez v1, :cond_2

    .line 466
    return-void

    .line 468
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 469
    .local v1, "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v1, :cond_3

    .line 470
    return-void

    .line 472
    :cond_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 473
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 472
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 475
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;I)V"
        }
    .end annotation

    .line 571
    .local p1, "criteria":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 572
    return-void

    .line 574
    :cond_0
    nop

    .line 575
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 576
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v0, :cond_1

    .line 577
    return-void

    .line 579
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 580
    .local v1, "appCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 581
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 582
    .local v3, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 583
    goto :goto_1

    .line 585
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 586
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 587
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 588
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 589
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 591
    :cond_3
    return-void

    .line 580
    .end local v3    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 594
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private writeInstantApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 517
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 518
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    return-void

    .line 522
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 525
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 526
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 528
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 529
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 528
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 530
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 531
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 532
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 535
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "icon.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 538
    .local v3, "iconFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 539
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v2, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :try_start_2
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 542
    .end local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 538
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    .end local v0    # "appDir":Ljava/io/File;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "iconFile":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2    # "userId":I
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 540
    .restart local v0    # "appDir":Ljava/io/File;
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "iconFile":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v6

    :try_start_4
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "appDir":Ljava/io/File;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "iconFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2    # "userId":I
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "appDir":Ljava/io/File;
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "iconFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "userId":I
    :catch_0
    move-exception v4

    .line 541
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "InstantAppRegistry"

    const-string v6, "Error writing instant app icon"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V
    .locals 20
    .param p1, "instantApp"    # Landroid/content/pm/InstantAppInfo;
    .param p2, "userId"    # I

    .line 1101
    const-string/jumbo v0, "permission"

    const-string/jumbo v1, "permissions"

    const-string/jumbo v2, "package"

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p2

    invoke-static {v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 1102
    .local v3, "appDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1103
    return-void

    .line 1106
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "metadata.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1108
    .local v5, "metadataFile":Ljava/io/File;
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1109
    .local v6, "destination":Landroid/util/AtomicFile;
    const/4 v7, 0x0

    .line 1111
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    move-object v7, v8

    .line 1113
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 1114
    .local v8, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1115
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1117
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v8, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1119
    invoke-interface {v8, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    const-string/jumbo v9, "label"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v12, p0

    :try_start_1
    iget-object v13, v12, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1121
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1120
    move-object/from16 v14, p1

    :try_start_2
    invoke-virtual {v14, v13}, Landroid/content/pm/InstantAppInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1121
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1120
    invoke-interface {v8, v11, v9, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    invoke-interface {v8, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/InstantAppInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v9

    array-length v13, v9

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_2

    aget-object v16, v9, v15

    move-object/from16 v17, v16

    .line 1125
    .local v17, "permission":Ljava/lang/String;
    invoke-interface {v8, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    const-string/jumbo v10, "name"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    .end local v17    # "permission":Ljava/lang/String;
    .local v3, "permission":Ljava/lang/String;
    .local v18, "appDir":Ljava/io/File;
    :try_start_3
    invoke-interface {v8, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1128
    const-string v10, "granted"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "permission":Ljava/lang/String;
    .local v19, "permission":Ljava/lang/String;
    invoke-interface {v8, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1127
    .end local v19    # "permission":Ljava/lang/String;
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_1
    move-object/from16 v19, v3

    const/16 v16, 0x1

    .line 1130
    .end local v3    # "permission":Ljava/lang/String;
    .restart local v19    # "permission":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v8, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    nop

    .end local v19    # "permission":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v16

    move-object/from16 v3, v18

    const/4 v11, 0x0

    goto :goto_0

    .line 1132
    .end local v18    # "appDir":Ljava/io/File;
    .local v3, "appDir":Ljava/io/File;
    :cond_2
    move-object/from16 v18, v3

    .end local v3    # "appDir":Ljava/io/File;
    .restart local v18    # "appDir":Ljava/io/File;
    const/4 v0, 0x0

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1134
    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1136
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1137
    invoke-virtual {v6, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_5

    .line 1138
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v18    # "appDir":Ljava/io/File;
    .restart local v3    # "appDir":Ljava/io/File;
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v12, p0

    :goto_2
    move-object/from16 v14, p1

    :goto_3
    move-object/from16 v18, v3

    .line 1139
    .end local v3    # "appDir":Ljava/io/File;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v18    # "appDir":Ljava/io/File;
    :goto_4
    :try_start_4
    const-string v1, "InstantAppRegistry"

    const-string v2, "Failed to write instant state, restoring backup"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    invoke-virtual {v6, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1142
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_5
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1143
    nop

    .line 1144
    return-void

    .line 1142
    :catchall_4
    move-exception v0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method


# virtual methods
.method public addInstantAppLPw(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "instantAppId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 444
    .local v0, "instantAppList":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_1

    .line 445
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v1

    .line 446
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 449
    return-void
.end method

.method public deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 554
    new-instance v0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;

    invoke-direct {v0, p1}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 558
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 559
    .local v0, "instantAppDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 560
    new-instance v1, Ljava/io/File;

    const-string v2, "icon.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 561
    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 562
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 563
    .local v1, "cookie":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 564
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 566
    :cond_0
    return-void
.end method

.method public getInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "android_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    .local v0, "idFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read instant app android id file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstantAppRegistry"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->generateInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInstantAppCookieLPw(Ljava/lang/String;I)[B
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 142
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 143
    return-object v1

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->getPendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)[B

    move-result-object v2

    .line 147
    .local v2, "pendingCookie":[B
    if-eqz v2, :cond_1

    .line 148
    return-object v2

    .line 150
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 151
    .local v3, "cookieFile":Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 154
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading cookie file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InstantAppRegistry"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    return-object v1
.end method

.method public getInstantAppIconLPw(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "icon.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v0, "iconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 216
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInstantAppsLPr(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstalledInstantApplicationsLPr(I)Ljava/util/List;

    move-result-object v0

    .line 257
    .local v0, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantApplicationsLPr(I)Ljava/util/List;

    move-result-object v1

    .line 258
    .local v1, "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    if-eqz v0, :cond_1

    .line 259
    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    :cond_0
    return-object v0

    .line 264
    :cond_1
    return-object v1
.end method

.method public grantInstantAccessLPw(ILandroid/content/Intent;II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "targetAppId"    # I
    .param p4, "instantAppId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 410
    .local v0, "instantAppList":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_7

    invoke-virtual {v0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    return-void

    .line 416
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 418
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 419
    return-void

    .line 422
    .end local v1    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez v1, :cond_4

    .line 423
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    .line 425
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 426
    .local v1, "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v1, :cond_5

    .line 427
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 428
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    :cond_5
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 431
    .local v2, "instantGrantList":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_6

    .line 432
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    .line 433
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {v2, p4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 436
    return-void

    .line 411
    .end local v1    # "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    .end local v2    # "instantGrantList":Landroid/util/SparseBooleanArray;
    :cond_7
    :goto_0
    return-void
.end method

.method hasInstantApplicationMetadataLPr(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasUninstalledInstantAppStateLPr(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantAppMetadataLPr(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 547
    :goto_1
    return v0
.end method

.method public isInstantAccessGranted(III)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "targetAppId"    # I
    .param p3, "instantAppId"    # I

    .line 389
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 390
    return v1

    .line 392
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 393
    .local v0, "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v0, :cond_1

    .line 394
    return v1

    .line 396
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 397
    .local v2, "instantGrantList":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_2

    .line 398
    return v1

    .line 400
    :cond_2
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method public synthetic lambda$pruneInstantApps$2$InstantAppRegistry(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 724
    .local v0, "lhsPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 725
    .local v1, "rhsPkg":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 726
    return v2

    .line 727
    :cond_0
    const/4 v3, -0x1

    if-nez v0, :cond_1

    .line 728
    return v3

    .line 729
    :cond_1
    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 730
    return v4

    .line 732
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    .line 733
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 734
    return v4

    .line 735
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    .line 736
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    .line 737
    return v3

    .line 739
    :cond_4
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_6

    .line 741
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 742
    .local v2, "lhsPs":Lcom/android/server/pm/PackageSetting;
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 743
    .local v5, "rhsPs":Lcom/android/server/pm/PackageSetting;
    iget-wide v6, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iget-wide v8, v5, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 744
    return v4

    .line 746
    :cond_5
    return v3

    .line 749
    .end local v2    # "lhsPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "rhsPs":Lcom/android/server/pm/PackageSetting;
    :cond_6
    return v2
.end method

.method public onPackageInstalledLPw(Landroid/content/pm/PackageParser$Package;[I)V
    .locals 17
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 270
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_8

    aget v7, v2, v6

    .line 276
    .local v7, "userId":I
    iget-object v8, v0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 277
    goto/16 :goto_2

    .line 281
    :cond_1
    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/InstantAppRegistry;->propagateInstantAppPermissionsIfNeeded(Landroid/content/pm/PackageParser$Package;I)V

    .line 284
    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 285
    iget v8, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/InstantAppRegistry;->addInstantAppLPw(II)V

    .line 289
    :cond_2
    new-instance v8, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;

    invoke-direct {v8, v1}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;-><init>(Landroid/content/pm/PackageParser$Package;)V

    invoke-direct {v0, v8, v7}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 294
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    .line 295
    .local v8, "instantAppDir":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "metadata.xml"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 296
    new-instance v9, Ljava/io/File;

    const-string v10, "icon.png"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 299
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 300
    .local v9, "currentCookieFile":Ljava/io/File;
    if-nez v9, :cond_3

    .line 301
    goto :goto_2

    .line 304
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, "cookieName":Ljava/lang/String;
    nop

    .line 306
    const-string v11, "cookie_"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 307
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, ".dat"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    .line 306
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "currentCookieSha256":Ljava/lang/String;
    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 316
    return-void

    .line 321
    :cond_4
    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v12, v12, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 322
    invoke-static {v12}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, "signaturesSha256Digests":[Ljava/lang/String;
    array-length v13, v12

    move v14, v5

    :goto_1
    if-ge v14, v13, :cond_6

    aget-object v15, v12, v14

    .line 324
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 325
    return-void

    .line 323
    .end local v15    # "s":Ljava/lang/String;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 330
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Signature for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " changed - dropping cookie"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "InstantAppRegistry"

    invoke-static {v14, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v13, v0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v13, v1, v7}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 334
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 274
    .end local v7    # "userId":I
    .end local v8    # "instantAppDir":Ljava/io/File;
    .end local v9    # "currentCookieFile":Ljava/io/File;
    .end local v10    # "cookieName":Ljava/lang/String;
    .end local v11    # "currentCookieSha256":Ljava/lang/String;
    .end local v12    # "signaturesSha256Digests":[Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 336
    :cond_8
    return-void
.end method

.method public onPackageUninstalledLPw(Landroid/content/pm/PackageParser$Package;[I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 341
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 342
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p2, v2

    .line 347
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    goto :goto_1

    .line 351
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/InstantAppRegistry;->addUninstalledInstantAppLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 354
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeInstantAppLPw(II)V

    goto :goto_1

    .line 357
    :cond_2
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 358
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 359
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeAppLPw(II)V

    .line 346
    .end local v3    # "userId":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_3
    return-void
.end method

.method public onUserRemovedLPw(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 368
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 369
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 375
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 381
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    .line 384
    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 385
    return-void
.end method

.method pruneInstalledInstantApps(JJ)Z
    .locals 7
    .param p1, "neededSpace"    # J
    .param p3, "maxInstalledCacheDuration"    # J

    .line 645
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstantAppRegistry"

    const-string v2, "Error pruning installed instant apps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    const/4 v1, 0x0

    return v1
.end method

.method pruneInstantApps()V
    .locals 13

    .line 625
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 626
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 625
    const-wide v1, 0x39ef8b000L

    const-string v3, "installed_instant_app_max_cache_period"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    .line 630
    .local v11, "maxInstalledCacheDuration":J
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 631
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 630
    const-string/jumbo v3, "uninstalled_instant_app_max_cache_period"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 636
    .local v0, "maxUninstalledCacheDuration":J
    const-wide v5, 0x7fffffffffffffffL

    move-object v4, p0

    move-wide v7, v11

    move-wide v9, v0

    :try_start_0
    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    goto :goto_0

    .line 638
    :catch_0
    move-exception v2

    .line 639
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "InstantAppRegistry"

    const-string v4, "Error pruning installed and uninstalled instant apps"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method pruneUninstalledInstantApps(JJ)Z
    .locals 7
    .param p1, "neededSpace"    # J
    .param p3, "maxUninstalledCacheDuration"    # J

    .line 654
    const-wide v3, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstantAppRegistry"

    const-string v2, "Error pruning uninstalled instant apps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    const/4 v1, 0x0

    return v1
.end method

.method public setInstantAppCookieLPw(Ljava/lang/String;[BI)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cookie"    # [B
    .param p3, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result v1

    .line 167
    .local v1, "maxCookieSize":I
    array-length v2, p2

    if-le v2, v1, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instant app cookie for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes while max size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstantAppRegistry"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v0

    .line 175
    .end local v1    # "maxCookieSize":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 176
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_1

    .line 177
    return v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v0, p3, v1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->schedulePersistLPw(ILandroid/content/pm/PackageParser$Package;[B)V

    .line 181
    const/4 v0, 0x1

    return v0
.end method
