.class public interface abstract Lcom/oneplus/android/server/carrier/IOpCarrierManager;
.super Ljava/lang/Object;
.source "IOpCarrierManager.java"


# virtual methods
.method public abstract grantCarrierPackageDefPermissions(I)V
.end method

.method public abstract grantCarrierPackageDefPermissionsUnify(Landroid/content/Context;)V
.end method

.method public abstract grantDefaultPermissionsToUssVVM(Landroid/content/Context;I)V
.end method

.method public abstract initDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)V
.end method

.method public abstract sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract sendApplicationStopByForceStop(Landroid/os/Handler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setUnifyAppStateForNewUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V
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
.end method

.method public abstract setUnifyAppsState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Z)V
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
.end method

.method public abstract setUnifyPAIAppState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
.end method

.method public abstract showCarrierShutdownAnimation()Z
.end method
