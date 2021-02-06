.class public abstract Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.super Landroid/permission/PermissionManagerInternal;
.source "PermissionManagerServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;,
        Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;,
        Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;,
        Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;,
        Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;,
        Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/permission/PermissionManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addAllPermissionGroups(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
.end method

.method public abstract addAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
.end method

.method public abstract enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
.end method

.method public abstract enforceCrossUserPermission(IIZZLjava/lang/String;)V
.end method

.method public abstract enforceCrossUserPermission(IIZZZLjava/lang/String;)V
.end method

.method public abstract enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
.end method

.method public abstract getAllPermissions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPermissionsWithProtection(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract getCheckPermissionDelegate()Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
.end method

.method public abstract getDefaultBrowser(I)Ljava/lang/String;
.end method

.method public abstract getDefaultDialer(I)Ljava/lang/String;
.end method

.method public abstract getDefaultHome(I)Ljava/lang/String;
.end method

.method public abstract getPermissionSettings()Lcom/android/server/pm/permission/PermissionSettings;
.end method

.method public abstract getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
.end method

.method public abstract grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
.end method

.method public abstract grantRequestedRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;I)V
.end method

.method public abstract isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
.end method

.method public abstract onNewUserCreated(I)V
.end method

.method public abstract removeAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
.end method

.method public abstract resetAllRuntimePermissions(I)V
.end method

.method public abstract resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
.end method

.method public abstract retainHardAndSoftRestrictedPermissions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract revokeRuntimePermissionsIfGroupChanged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAutoRevokeWhitelisted(Ljava/lang/String;ZI)V
.end method

.method public abstract setCheckPermissionDelegate(Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;)V
.end method

.method public abstract setDefaultBrowser(Ljava/lang/String;ZZI)V
.end method

.method public abstract setDefaultBrowserProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;)V
.end method

.method public abstract setDefaultDialerProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;)V
.end method

.method public abstract setDefaultHome(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDefaultHomeProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;)V
.end method

.method public abstract setDialerAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
.end method

.method public abstract setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
.end method

.method public abstract setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
.end method

.method public abstract setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
.end method

.method public abstract setSmsAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
.end method

.method public abstract setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;)V
.end method

.method public abstract setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
.end method

.method public abstract setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
.end method

.method public abstract setWhitelistedRestrictedPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract setWhitelistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract systemReady()V
.end method

.method public abstract updateAllPermissions(Ljava/lang/String;Z)V
.end method

.method public abstract updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
.end method
