.class public Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;
.super Ljava/lang/Object;
.source "OpCarrierManagerInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "OpCarrierManagerInjector"

.field private static mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureValid()Z
    .locals 1

    .line 45
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_carrier_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 47
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    sput-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    .line 49
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static grantCarrierPackageDefPermissions(I)V
    .locals 1
    .param p0, "userId"    # I

    .line 59
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->grantCarrierPackageDefPermissions(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public static grantCarrierPackageDefPermissionsUnify(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->grantCarrierPackageDefPermissionsUnify(Landroid/content/Context;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionsToUssVVM(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 71
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->grantDefaultPermissionsToUssVVM(Landroid/content/Context;I)V

    .line 74
    :cond_0
    return-void
.end method

.method public static initDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)V
    .locals 1
    .param p0, "dp"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    .line 53
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->initDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopReason"    # I

    .line 89
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V

    .line 92
    :cond_0
    return-void
.end method

.method public static sendApplicationStopByForceStop(Landroid/os/Handler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->sendApplicationStopByForceStop(Landroid/os/Handler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static setUnifyAppStateForNewUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "sUserManager"    # Lcom/android/server/pm/UserManagerService;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 123
    .local p3, "mAllPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local p4, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v1, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->setUnifyAppStateForNewUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 126
    :cond_0
    return-void
.end method

.method public static setUnifyAppsState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "sUserManager"    # Lcom/android/server/pm/UserManagerService;
    .param p5, "firstBoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;Z)V"
        }
    .end annotation

    .line 113
    .local p3, "mAllPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local p4, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v1, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->setUnifyAppsState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public static setUnifyPAIAppState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->setUnifyPAIAppState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static showCarrierShutdownAnimation()Z
    .locals 1

    .line 101
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->showCarrierShutdownAnimation()Z

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
