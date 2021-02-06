.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.super Landroid/content/pm/ICrossProfileApps$Stub;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossProfileAppsService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

.field private final mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 91
    invoke-direct {p0}, Landroid/content/pm/ICrossProfileApps$Stub;-><init>()V

    .line 81
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    .line 92
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 78
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/CrossProfileAppsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/CrossProfileAppsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private appDeclaresCrossProfileAttribute(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 579
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 580
    .local v0, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCrossProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private canRequestInteractAcrossProfilesUnchecked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 263
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 264
    .local v0, "enabledProfileIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 265
    return v2

    .line 267
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    return v2

    .line 270
    :cond_1
    const/16 v1, 0x5d

    .line 271
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private currentModeEquals(ILjava/lang/String;I)Z
    .locals 9
    .param p1, "otherMode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 545
    nop

    .line 546
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "op":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v8, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private findAllPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 682
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v2

    .line 681
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(III)Ljava/util/List;

    move-result-object v0

    .line 683
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs;->INSTANCE:Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs;

    .line 684
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 685
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 680
    return-object v0
.end method

.method private findBroadcastReceiversForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 569
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 568
    return-object v0
.end method

.method private getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$ZwEbVtiAVN8XYZYxg44xuGkFKak;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$ZwEbVtiAVN8XYZYxg44xuGkFKak;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 300
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v1

    .line 299
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 719
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 720
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 724
    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0, v2, p3, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 723
    :goto_0
    return v1

    .line 721
    :cond_2
    :goto_1
    return v1
.end method

.method private hasOtherProfileWithPackageInstalled(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 642
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 277
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 279
    .end local v0    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "CrossProfileAppsService"

    const-string v2, "PackageManager dead. Cannot get permission info"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    return v1
.end method

.method private isCallingUserAManagedProfile()Z
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method private isCrossProfilePackageWhitelisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$i8pCn3vFy03m7u0vRgPEFDJBRZ8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$i8pCn3vFy03m7u0vRgPEFDJBRZ8;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isCrossProfilePackageWhitelistedByDefault(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$CivmBEBoyHzUSmV21ug5oSEiuXM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$CivmBEBoyHzUSmV21ug5oSEiuXM;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isManagedProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 714
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$_QVEx6li6tfJWaDf54O7jr0fE5Q;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$_QVEx6li6tfJWaDf54O7jr0fE5Q;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isPackageEnabled(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 344
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$35r-Eh7boIF7EPFqH7bKXyZYEDo;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$35r-Eh7boIF7EPFqH7bKXyZYEDo;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 448
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 449
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private isPermissionGranted(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 705
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isPlatformSignedAppWithAutomaticProfilesPermission(Ljava/lang/String;[I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileIds"    # [I

    .line 628
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    .line 629
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4, p1, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v4

    .line 631
    .local v4, "uid":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 632
    goto :goto_1

    .line 634
    :cond_0
    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 635
    const/4 v0, 0x1

    return v0

    .line 628
    .end local v3    # "userId":I
    .end local v4    # "uid":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    :cond_2
    return v1
.end method

.method private isPlatformSignedAppWithNonUserConfigurablePermission(Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileIds"    # [I

    .line 616
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCrossProfilePackageWhitelistedByDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPlatformSignedAppWithAutomaticProfilesPermission(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 616
    :goto_0
    return v0
.end method

.method private isProfileOwner(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$SkoXDY_btTNmVcedeaMo-QLx9-s;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$SkoXDY_btTNmVcedeaMo-QLx9-s;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    .line 743
    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 745
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 746
    const/4 v1, 0x0

    return v1

    .line 748
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isProfileOwner(Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 733
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    .line 734
    .local v3, "userId":I
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 735
    const/4 v0, 0x1

    return v0

    .line 733
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    :cond_1
    return v1
.end method

.method private isSameProfileGroup(II)Z
    .locals 2
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 693
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findAllPackageNames$11(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 684
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$wMVevLD4FZ1cL73xmtbSkTJK9d8(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->resetInteractAcrossProfilesAppOp(Ljava/lang/String;)V

    return-void
.end method

.method private logStartActivityByIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 247
    nop

    .line 248
    const/16 v0, 0x96

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 249
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 250
    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCallingUserAManagedProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 252
    return-void
.end method

.method private maybeKillUid(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "hadPermission"    # Z

    .line 509
    if-nez p3, :cond_0

    .line 510
    return-void

    .line 512
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->killUid(I)V

    .line 516
    return-void
.end method

.method private maybeLogSetInteractAcrossProfilesAppOp(Ljava/lang/String;IIZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "userId"    # I
    .param p4, "logMetrics"    # Z
    .param p5, "uid"    # I

    .line 524
    if-nez p4, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_1

    .line 529
    return-void

    .line 531
    :cond_1
    const/16 v0, 0x8b

    .line 532
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 533
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 534
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 535
    invoke-direct {p0, p5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->appDeclaresCrossProfileAttribute(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 537
    return-void
.end method

.method private resetInteractAcrossProfilesAppOp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not resetting app-op for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " since it is still configurable by users."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrossProfileAppsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void

    .line 665
    :cond_0
    nop

    .line 666
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "op":Ljava/lang/String;
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    .line 668
    return-void
.end method

.method private sendCanInteractAcrossProfilesChangedBroadcast(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CAN_INTERACT_ACROSS_PROFILES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 555
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->appDeclaresCrossProfileAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 559
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 561
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->findBroadcastReceiversForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 562
    .local v2, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 563
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 564
    .end local v2    # "receiver":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 565
    :cond_1
    return-void
.end method

.method private setInteractAcrossProfilesAppOpForUser(Ljava/lang/String;IIZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "userId"    # I
    .param p4, "logMetrics"    # Z

    .line 464
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpForUserOrThrow(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on user ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrossProfileAppsService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method private setInteractAcrossProfilesAppOpForUserOrThrow(Ljava/lang/String;IIZ)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "userId"    # I
    .param p4, "logMetrics"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 474
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 475
    .local v0, "uid":I
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->currentModeEquals(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set mode to existing value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on user ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrossProfileAppsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 481
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v1

    .line 484
    .local v1, "hadPermission":Z
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v8

    .line 485
    .local v8, "callingUid":I
    const-string v2, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    invoke-direct {p0, v2, v8}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;I)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x5d

    .line 494
    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 498
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->maybeKillUid(Ljava/lang/String;IZ)V

    .line 499
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->sendCanInteractAcrossProfilesChangedBroadcast(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 500
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->maybeLogSetInteractAcrossProfilesAppOp(Ljava/lang/String;IIZI)V

    .line 501
    return-void
.end method

.method private setInteractAcrossProfilesAppOpUnchecked(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "logMetrics"    # Z

    .line 428
    if-nez p2, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to turn on the appop for interacting across profiles for invalid app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrossProfileAppsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 437
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 438
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 439
    .local v0, "profileIds":[I
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 440
    .local v3, "profileId":I
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    goto :goto_1

    .line 443
    :cond_1
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpForUser(Ljava/lang/String;IIZ)V

    .line 439
    .end local v3    # "profileId":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_2
    return-void
.end method

.method private verifyActivityCanHandleIntent(Landroid/content/Intent;II)V
    .locals 2
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 357
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 371
    return-void
.end method

.method private verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V
    .locals 8
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 379
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v7, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;IILandroid/content/ComponentName;)V

    invoke-interface {v0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 399
    return-void
.end method

.method private verifyCallingPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 702
    return-void
.end method


# virtual methods
.method public canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 587
    return v1

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasOtherProfileWithPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    return v1

    .line 592
    :cond_1
    const/16 v0, 0x5d

    .line 593
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    return v1

    .line 596
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCrossProfilePackageWhitelisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canInteractAcrossProfiles(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 287
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 291
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "targetUserProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const/4 v1, 0x0

    return v1

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public canRequestInteractAcrossProfiles(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 256
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canRequestInteractAcrossProfilesUnchecked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 602
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    .line 601
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 603
    .local v0, "profileIds":[I
    array-length v1, v0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 604
    return v2

    .line 606
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    return v2

    .line 609
    :cond_1
    const/16 v1, 0x5d

    .line 610
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPlatformSignedAppWithNonUserConfigurablePermission(Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 609
    :goto_0
    return v2
.end method

.method public clearInteractAcrossProfilesAppOps()V
    .locals 3

    .line 672
    nop

    .line 674
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v0

    .line 675
    .local v0, "defaultMode":I
    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->findAllPackageNames()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$iCdID9mpWwEF8zjU8plHANZ1ZyI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$iCdID9mpWwEF8zjU8plHANZ1ZyI;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    .line 676
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 677
    return-void
.end method

.method getLocalService()Landroid/content/pm/CrossProfileAppsInternal;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    return-object v0
.end method

.method public getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 102
    nop

    .line 103
    const/16 v0, 0x7d

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 107
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 108
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$clearInteractAcrossProfilesAppOps$10$CrossProfileAppsServiceImpl(ILjava/lang/String;)V
    .locals 0
    .param p1, "defaultMode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 676
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$currentModeEquals$8$CrossProfileAppsServiceImpl(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "otherMode"    # I
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 548
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 547
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getTargetUserProfilesUnchecked$2$CrossProfileAppsServiceImpl(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 319
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 321
    .local v0, "enabledProfileIds":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "targetProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    .line 323
    .local v4, "profileId":I
    if-ne v4, p1, :cond_0

    .line 324
    goto :goto_1

    .line 326
    :cond_0
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 327
    goto :goto_1

    .line 331
    :cond_1
    invoke-static {v4}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 332
    invoke-static {p2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isPackageParallelNonWorkProfile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    goto :goto_1

    .line 336
    :cond_2
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v4    # "profileId":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_3
    return-object v1
.end method

.method public synthetic lambda$hasOtherProfileWithPackageInstalled$9$CrossProfileAppsServiceImpl(ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 644
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 645
    .local v0, "profileIds":[I
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 646
    .local v4, "profileId":I
    if-eq v4, p1, :cond_0

    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 647
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 645
    .end local v4    # "profileId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$isCrossProfilePackageWhitelisted$0$CrossProfileAppsServiceImpl(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 305
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$isCrossProfilePackageWhitelistedByDefault$1$CrossProfileAppsServiceImpl(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 311
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$isManagedProfile$13$CrossProfileAppsServiceImpl(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$isPackageEnabled$3$CrossProfileAppsServiceImpl(Ljava/lang/String;II)Ljava/lang/Boolean;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 346
    const/high16 v1, 0xc0000

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 351
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$isPackageInstalled$6$CrossProfileAppsServiceImpl(Ljava/lang/String;II)Ljava/lang/Boolean;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 451
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 452
    const/high16 v1, 0xc0000

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 457
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$isProfileOwner$14$CrossProfileAppsServiceImpl(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$isSameProfileGroup$12$CrossProfileAppsServiceImpl(II)Ljava/lang/Boolean;
    .locals 1
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setInteractAcrossProfilesAppOpForUserOrThrow$7$CrossProfileAppsServiceImpl(ILjava/lang/String;I)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    .line 491
    const/16 v1, 0x5d

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 490
    return-void
.end method

.method public synthetic lambda$verifyActivityCanHandleIntent$4$CrossProfileAppsServiceImpl(Landroid/content/Intent;II)V
    .locals 7
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 359
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 361
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 359
    const/high16 v4, 0xc0000

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    .line 366
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Activity cannot handle intent"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic lambda$verifyActivityCanHandleIntentAndExported$5$CrossProfileAppsServiceImpl(Landroid/content/Intent;IILandroid/content/ComponentName;)V
    .locals 7
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 381
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 383
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 381
    const/high16 v4, 0xc0000

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    .line 387
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 388
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 389
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 390
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 391
    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v4, :cond_0

    .line 393
    return-void

    .line 388
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER or activity is not exported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetInteractAcrossProfilesAppOps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 656
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$wMVevLD4FZ1cL73xmtbSkTJK9d8;

    invoke-direct {v0, p0}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$wMVevLD4FZ1cL73xmtbSkTJK9d8;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 657
    return-void
.end method

.method public setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I

    .line 409
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 410
    .local v0, "callingUid":I
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL is required to set the app-op for interacting across profiles."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_1
    :goto_0
    const-string v1, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 417
    const-string v1, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 419
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "MANAGE_APP_OPS_MODES or CONFIGURE_INTERACT_ACROSS_PROFILES is required to set the app-op for interacting across profiles."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_3
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(Ljava/lang/String;IZ)V

    .line 424
    return-void
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZ)V
    .locals 18
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .param p6, "launchMainActivity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-direct {v0, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 124
    nop

    .line 125
    const/16 v1, 0x7e

    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    .line 126
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 129
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v13

    .line 130
    .local v13, "callerUserId":I
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v14

    .line 131
    .local v14, "callingUid":I
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v15

    .line 133
    .local v15, "callingPid":I
    invoke-direct {v0, v10, v13}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 135
    .local v9, "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v8, v1

    .line 148
    .local v8, "launchIntent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 149
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x10200000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 160
    :cond_0
    if-eq v13, v12, :cond_2

    .line 161
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v1, v2, v15, v14, v10}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 167
    .local v1, "permissionFlag":I
    if-nez v1, :cond_1

    .line 168
    invoke-direct {v0, v13, v12}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isSameProfileGroup(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    .end local v1    # "permissionFlag":I
    :cond_2
    :goto_0
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 176
    :goto_1
    invoke-direct {v0, v8, v11, v14, v12}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 180
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v2

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    .line 184
    if-eqz p6, :cond_3

    .line 185
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    .line 186
    :cond_3
    move-object/from16 v16, v1

    .line 180
    :goto_2
    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v8

    move-object/from16 v17, v8

    .end local v8    # "launchIntent":Landroid/content/Intent;
    .local v17, "launchIntent":Landroid/content/Intent;
    move-object/from16 v8, v16

    move-object/from16 v16, v9

    .end local v9    # "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .local v16, "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 188
    return-void

    .line 141
    .end local v16    # "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v17    # "launchIntent":Landroid/content/Intent;
    .restart local v9    # "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attempts to start an activity in other package - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_5
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot access unrelated user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I
    .param p6, "callingActivity"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move/from16 v11, p5

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "The intent must have a Component set"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    invoke-direct {v0, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 205
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v12

    .line 206
    .local v12, "callerUserId":I
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v13

    .line 208
    .local v13, "callingUid":I
    invoke-direct {v0, v10, v12}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 210
    .local v14, "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-eq v12, v11, :cond_1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot access unrelated user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v15, p4

    invoke-direct {v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v1

    .line 215
    .local v9, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    if-eq v12, v11, :cond_3

    .line 224
    invoke-direct {v0, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 225
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_3
    :goto_1
    invoke-direct {v0, v9, v13, v11}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntent(Landroid/content/Intent;II)V

    .line 233
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    const/4 v7, 0x0

    .line 234
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v9

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v16, v9

    .end local v9    # "launchIntent":Landroid/content/Intent;
    .local v16, "launchIntent":Landroid/content/Intent;
    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 243
    invoke-direct {v0, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->logStartActivityByIntent(Ljava/lang/String;)V

    .line 244
    return-void

    .line 218
    .end local v16    # "launchIntent":Landroid/content/Intent;
    .restart local v9    # "launchIntent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v16, v9

    .end local v9    # "launchIntent":Landroid/content/Intent;
    .restart local v16    # "launchIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attempts to start an activity in other package - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
