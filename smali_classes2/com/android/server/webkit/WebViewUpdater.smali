.class Lcom/android/server/webkit/WebViewUpdater;
.super Ljava/lang/Object;
.source "WebViewUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;,
        Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VALIDITY_INCORRECT_SDK_VERSION:I = 0x1

.field private static final VALIDITY_INCORRECT_SIGNATURE:I = 0x3

.field private static final VALIDITY_INCORRECT_VERSION_CODE:I = 0x2

.field private static final VALIDITY_NO_LIBRARY_FLAG:I = 0x4

.field private static final VALIDITY_OK:I = 0x0

.field private static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private NUMBER_OF_RELROS_UNKNOWN:I

.field private mAnyWebViewInstalled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field private final mLock:Ljava/lang/Object;

.field private mMinimumVersionCode:J

.field private mNumRelroCreationsFinished:I

.field private mNumRelroCreationsStarted:I

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewPackageDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 60
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 62
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 65
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 75
    return-void
.end method

.method private checkIfRelrosDoneLocked()V
    .locals 2

    .line 397
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1

    .line 398
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 404
    .local v0, "newPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "newPackage":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 411
    .end local v0    # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_0
    goto :goto_1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 416
    :cond_1
    :goto_1
    return-void
.end method

.method private dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 557
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 558
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    const-string v1, "  WebView packages:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 560
    .local v4, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 561
    invoke-interface {v5, v6, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 562
    .local v5, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    nop

    .line 563
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/UserPackage;

    invoke-virtual {v6}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 564
    .local v6, "systemUserPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 565
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v2

    const-string v8, "    %s is NOT installed."

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    goto :goto_2

    .line 569
    :cond_0
    invoke-direct {p0, v4, v6}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v8

    .line 570
    .local v8, "validity":I
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v10, v2

    .line 573
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 574
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 570
    const-string v11, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 575
    .local v10, "packageDetails":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 576
    iget-object v11, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v13, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 577
    invoke-interface {v11, v13, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v11

    .line 576
    invoke-static {v11}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v11

    .line 578
    .local v11, "installedForAllUsers":Z
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v13, v9, v2

    aput-object v10, v9, v7

    .line 582
    if-eqz v11, :cond_1

    const-string v7, ""

    goto :goto_1

    :cond_1
    const-string v7, "NOT"

    :goto_1
    aput-object v7, v9, v12

    .line 578
    const-string v7, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    .end local v11    # "installedForAllUsers":Z
    goto :goto_2

    .line 584
    :cond_2
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v11, v9, v2

    aput-object v10, v9, v7

    .line 587
    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdater;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v12

    .line 584
    const-string v7, "    Invalid package %s (%s), reason: %s"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    .end local v4    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v5    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    .end local v6    # "systemUserPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "validity":I
    .end local v10    # "packageDetails":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 590
    :cond_3
    return-void
.end method

.method private findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 277
    .local v0, "providers":[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "userChosenProvider":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 282
    .local v5, "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 285
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 287
    .local v6, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 288
    iget-object v2, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 281
    .end local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .end local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    :cond_1
    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 297
    .restart local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_2

    .line 299
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 300
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 302
    .restart local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 303
    iget-object v2, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 296
    .end local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .end local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 309
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 310
    new-instance v2, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;

    const-string v3, "Could not find a loadable WebView package"

    invoke-direct {v2, v3}, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getInvalidityReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "invalidityReason"    # I

    .line 593
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 603
    const-string v0, "Unexcepted validity-reason"

    return-object v0

    .line 601
    :cond_0
    const-string v0, "No WebView-library manifest flag"

    return-object v0

    .line 599
    :cond_1
    const-string v0, "Incorrect signature"

    return-object v0

    .line 597
    :cond_2
    const-string v0, "Version code too low"

    return-object v0

    .line 595
    :cond_3
    const-string v0, "SDK version too low"

    return-object v0
.end method

.method private getMinimumVersionCode()J
    .locals 11

    .line 479
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 480
    return-wide v0

    .line 483
    :cond_0
    const-wide/16 v0, -0x1

    .line 484
    .local v0, "minimumVersionCode":J
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 485
    .local v7, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_3

    .line 487
    :try_start_0
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v9, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 488
    invoke-interface {v8, v9}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .local v8, "versionCode":J
    cmp-long v10, v0, v2

    if-ltz v10, :cond_1

    cmp-long v10, v8, v0

    if-gez v10, :cond_2

    .line 490
    :cond_1
    move-wide v0, v8

    .line 494
    .end local v8    # "versionCode":J
    :cond_2
    goto :goto_1

    .line 492
    :catch_0
    move-exception v8

    .line 484
    .end local v7    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 498
    :cond_4
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 499
    return-wide v0
.end method

.method private getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 253
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 256
    :try_start_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 257
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 258
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    new-instance v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_1

    .line 261
    :catch_0
    move-exception v3

    .line 254
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "n":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    return-object v2
.end method

.method static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 320
    .local p0, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UserPackage;

    .line 324
    .local v1, "userPackage":Landroid/webkit/UserPackage;
    invoke-virtual {v1}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 331
    .end local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_1
    goto :goto_0

    .line 329
    .restart local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 332
    .end local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "newPackage"    # Landroid/content/pm/PackageInfo;

    .line 207
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 209
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_0

    .line 210
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 215
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 217
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 218
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 221
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    goto :goto_0

    .line 223
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 225
    :goto_0
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .locals 7
    .param p0, "provider"    # Landroid/webkit/WebViewProviderInfo;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .line 505
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 508
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 511
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    return v2

    .line 514
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 515
    .local v5, "signature":Landroid/content/pm/Signature;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    .line 514
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 518
    :cond_4
    return v2
.end method

.method private validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .locals 4
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 427
    invoke-static {p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x1

    return v0

    .line 430
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdater;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 431
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    const/4 v0, 0x2

    return v0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdater;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 437
    const/4 v0, 0x3

    return v0

    .line 439
    :cond_2
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 440
    const/4 v0, 0x4

    return v0

    .line 442
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static versionCodeGE(JJ)Z
    .locals 5
    .param p0, "versionCode1"    # J
    .param p2, "versionCode2"    # J

    .line 462
    const-wide/32 v0, 0x186a0

    div-long v2, p0, v0

    .line 463
    .local v2, "v1":J
    div-long v0, p2, v0

    .line 465
    .local v0, "v2":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private webViewIsReadyLocked()Z
    .locals 2

    .line 388
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "newProviderName"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 156
    .local v0, "newPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 157
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v1
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 522
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 524
    const-string v1, "  Current WebView package is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_0
    const-string v1, "  Current WebView package (name, version): (%s, %s)"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    :goto_0
    const-string v1, "  Minimum targetSdkVersion: %d"

    new-array v5, v3, [Ljava/lang/Object;

    const/16 v6, 0x1e

    .line 531
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 530
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    const-string v1, "  Minimum WebView version code: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 533
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 532
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    const-string v1, "  Number of relros started: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 535
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 534
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    const-string v1, "  Number of relros finished: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 537
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 536
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    const-string v1, "  WebView package dirty: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    const-string v1, "  Any WebView package installed: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 540
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 539
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 544
    .local v1, "preferredWebViewPackage":Landroid/content/pm/PackageInfo;
    const-string v5, "  Preferred WebView package (name, version): (%s, %s)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v2, v4

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    .end local v1    # "preferredWebViewPackage":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :try_start_2
    const-string v2, "  Preferred WebView package: none"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    .end local v1    # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 553
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 4

    .line 232
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 233
    .local v0, "providersAndPackageInfos":[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    array-length v1, v0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    .line 235
    .local v1, "providers":[Landroid/webkit/WebViewProviderInfo;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 236
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v3, v1, v2

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "n":I
    :cond_0
    return-object v1
.end method

.method isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyRelroCreationCompleted()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 338
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method packageStateChanged(Ljava/lang/String;I)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedState"    # I

    .line 78
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 79
    .local v4, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 81
    .local v5, "webviewPackage":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "updateWebView":Z
    const/4 v1, 0x0

    .line 84
    .local v1, "removedOrChangedOldPackage":Z
    const/4 v3, 0x0

    .line 85
    .local v3, "oldProviderName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 86
    .local v6, "newPackage":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v8

    move-object v6, v8

    .line 89
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_0

    .line 90
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, v8

    .line 95
    :cond_0
    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 97
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-nez v8, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    move v0, v2

    .line 101
    iget-object v2, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .line 103
    if-eqz v0, :cond_3

    .line 104
    invoke-direct {p0, v6}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_3
    goto :goto_1

    .line 111
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v8, 0x0

    :try_start_1
    iput-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 108
    sget-object v8, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find valid WebView package to create relro with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v2    # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    .line 118
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2, v3}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 120
    :cond_4
    return-void

    .line 111
    :goto_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 78
    .end local v0    # "updateWebView":Z
    .end local v1    # "removedOrChangedOldPackage":Z
    .end local v3    # "oldProviderName":Ljava/lang/String;
    .end local v4    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v5    # "webviewPackage":Ljava/lang/String;
    .end local v6    # "newPackage":Landroid/content/pm/PackageInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_6
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .locals 5

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 129
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "userSetting":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 141
    .end local v1    # "userSetting":Ljava/lang/String;
    monitor-exit v0

    .line 145
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/webkit/WebViewUpdater;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    .restart local p0    # "this":Lcom/android/server/webkit/WebViewUpdater;
    :catchall_1
    move-exception v0

    .line 144
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p1, "newProviderName"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "oldPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 168
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 169
    .local v2, "providerChanged":Z
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    move-object v0, v4

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v1, v4

    .line 178
    if-eqz v0, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 186
    nop

    .line 188
    if-eqz v2, :cond_3

    .line 189
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 191
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 194
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 199
    :cond_4
    return-object v1

    .line 180
    :catch_0
    move-exception v4

    .line 183
    .local v4, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v5, 0x0

    :try_start_3
    iput-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 184
    sget-object v6, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find WebView package to use "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v3

    return-object v5

    .line 191
    .end local v4    # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 15

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "webViewPackage":Landroid/content/pm/PackageInfo;
    const-wide/32 v1, 0xf4240

    .line 345
    .local v1, "NS_PER_MS":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v3, v7

    .line 346
    .local v3, "timeoutTimeMs":J
    const/4 v7, 0x0

    .line 347
    .local v7, "webViewReady":Z
    const/4 v8, 0x0

    .line 348
    .local v8, "webViewStatus":I
    iget-object v9, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v10

    move v7, v10

    .line 350
    :goto_0
    if-nez v7, :cond_1

    .line 351
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long/2addr v10, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .local v10, "timeNowMs":J
    cmp-long v12, v10, v3

    if-ltz v12, :cond_0

    goto :goto_2

    .line 354
    :cond_0
    :try_start_1
    iget-object v12, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    sub-long v13, v3, v10

    invoke-virtual {v12, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 355
    :catch_0
    move-exception v12

    :goto_1
    nop

    .line 356
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v12

    move v7, v12

    .line 357
    .end local v10    # "timeNowMs":J
    goto :goto_0

    .line 359
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    move-object v0, v5

    .line 360
    if-eqz v7, :cond_2

    goto :goto_3

    .line 361
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-nez v5, :cond_3

    .line 362
    const/4 v5, 0x4

    move v8, v5

    .end local v8    # "webViewStatus":I
    .local v5, "webViewStatus":I
    goto :goto_3

    .line 366
    .end local v5    # "webViewStatus":I
    .restart local v8    # "webViewStatus":I
    :cond_3
    const/4 v8, 0x3

    .line 367
    sget-object v5, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " relros finished "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " package dirty? "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-nez v7, :cond_4

    sget-object v5, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v6, "creating relro file timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_4
    new-instance v5, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v5, v0, v8}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v5

    .line 372
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method
