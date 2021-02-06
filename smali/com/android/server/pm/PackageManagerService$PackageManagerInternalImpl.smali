.class Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.super Landroid/content/pm/PackageManagerInternal;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 24714
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/PackageManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 24714
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method private varargs filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 24898
    if-nez p1, :cond_0

    .line 24899
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 24902
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24904
    .local v0, "systemPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 24905
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 24906
    if-nez v4, :cond_1

    .line 24907
    :try_start_0
    monitor-exit v5

    goto :goto_1

    .line 24910
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 24911
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v6, :cond_2

    .line 24912
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24913
    monitor-exit v5

    goto :goto_1

    .line 24916
    :cond_2
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    if-nez v7, :cond_3

    .line 24917
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not system"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24918
    monitor-exit v5

    goto :goto_1

    .line 24921
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24922
    nop

    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    monitor-exit v5

    .line 24904
    .end local v4    # "pkgName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24922
    .restart local v4    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24925
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_4
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getKnownPackageNamesInternal(II)[Ljava/lang/String;
    .locals 4
    .param p1, "knownPackage"    # I
    .param p2, "userId"    # I

    .line 24934
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 24967
    :pswitch_0
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 24963
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24964
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 24965
    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    move-object v0, v1

    .line 24963
    :goto_0
    return-object v0

    .line 24961
    :pswitch_2
    const-string v0, "com.android.companiondevicemanager"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24959
    :pswitch_3
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24957
    :pswitch_4
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24955
    :pswitch_5
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24953
    :pswitch_6
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDocumenterPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24951
    :pswitch_7
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mWellbeingPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24949
    :pswitch_8
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24946
    :pswitch_9
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24936
    :pswitch_a
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    return-object v1

    .line 24944
    :pswitch_b
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24938
    :pswitch_c
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24940
    :pswitch_d
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24942
    :pswitch_e
    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 5
    .param p1, "uid"    # I

    .line 24779
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24780
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 24781
    .local v1, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 24782
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 24783
    instance-of v3, v2, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_0

    .line 24784
    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object v3

    .line 24785
    :cond_0
    instance-of v3, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_1

    .line 24786
    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 24787
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object v4

    .line 24790
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object v3

    .line 24791
    .end local v1    # "appId":I
    .end local v2    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 24769
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24770
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 24771
    .local v1, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_0

    .line 24772
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 24774
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 24775
    .end local v1    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$removeAllNonSystemPackageSuspensions$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "suspendingPackage"    # Ljava/lang/String;

    .line 25073
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeNonSystemPackageSuspensions$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "suspendingPackage"    # Ljava/lang/String;

    .line 25081
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "ownerUid"    # I

    .line 25484
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25486
    monitor-exit v0

    .line 25487
    return-void

    .line 25486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 25517
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25518
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 25519
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 25521
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canAccessInstantApps(II)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 25512
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$8800(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v0

    return v0
.end method

.method public clearBlockUninstallForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 25821
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25822
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->clearBlockUninstallLPw(I)V

    .line 25823
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 25824
    monitor-exit v0

    .line 25825
    return-void

    .line 25824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compileLayouts(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 25643
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 25645
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_0

    .line 25646
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 25648
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25649
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/dex/ArtManagerService;->compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    return v0

    .line 25648
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 24806
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24807
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 24808
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 24810
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 24815
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24816
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 24817
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 24819
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishPackageInstall(IZ)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "didLaunch"    # Z

    .line 25654
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->finishPackageInstall(IZ)V

    .line 25655
    return-void
.end method

.method public flushPackageRestrictions(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 25087
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25088
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;I)V

    .line 25089
    monitor-exit v0

    .line 25090
    return-void

    .line 25089
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 25595
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 25596
    return-void
.end method

.method public forEachPackage(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 25580
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 25581
    return-void
.end method

.method public forEachPackageSetting(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 25585
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25586
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 25587
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 25586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25589
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    .line 25590
    return-void

    .line 25589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25575
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V

    .line 25576
    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 25171
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25172
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 25171
    return-object v0
.end method

.method public getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "apexPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25672
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationEnabledState(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25623
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 25625
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    .line 25626
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 25628
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 25629
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 25164
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25165
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 25164
    return-object v0
.end method

.method public getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25540
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$9000(Lcom/android/server/pm/PackageManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 25542
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCeDataInode(Ljava/lang/String;I)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25027
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25028
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 25029
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 25030
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 25032
    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 25033
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    .line 25200
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$7400(Lcom/android/server/pm/PackageManagerService;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25611
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25612
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 25613
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    .line 25614
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object v2

    .line 25616
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 25617
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 24875
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24876
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 24877
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 24883
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 24885
    .local v0, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 24886
    .local v2, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getDistractingPackageRestrictions(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25143
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 25145
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getDistractionFlags(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 25146
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25600
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25601
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 25602
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    .line 25603
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object v2

    .line 25605
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 25606
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 25195
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(III)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 24718
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$5800(Lcom/android/server/pm/PackageManagerService;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .line 24801
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKnownPackageNames(II)[Ljava/lang/String;
    .locals 2
    .param p1, "knownPackage"    # I
    .param p2, "userId"    # I

    .line 24930
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getKnownPackageNamesInternal(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25798
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .line 25275
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 25368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25369
    .local v0, "overlayPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25370
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 25371
    .local v3, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 25372
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 25374
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 25375
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25378
    .end local v3    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 25379
    :cond_1
    monitor-exit v1

    .line 25380
    return-object v0

    .line 25379
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 7
    .param p1, "uid"    # I

    .line 24833
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24834
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v2, 0x3e8

    invoke-static {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->access$6200(Lcom/android/server/pm/PackageManagerService;II)[Ljava/lang/String;

    move-result-object v1

    .line 24835
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 24836
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v3, v1

    .line 24837
    .local v3, "numPackages":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-nez v2, :cond_1

    if-ge v4, v3, :cond_1

    .line 24838
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v2, v5

    .line 24837
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 24840
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0

    return-object v2

    .line 24841
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "numPackages":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 24824
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24825
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v2, -0x1

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 24827
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    monitor-exit v0

    return-object v1

    .line 24828
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 25020
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25021
    const-wide/16 v2, -0x1

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$6800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 25020
    return-object v0
.end method

.method public getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;
    .locals 5
    .param p1, "observer"    # Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 24852
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24853
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 24854
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24855
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 24856
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24855
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24858
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/android/server/pm/PackageList;

    invoke-direct {v3, v2, p1}, Lcom/android/server/pm/PackageList;-><init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    .line 24859
    .local v3, "packageList":Lcom/android/server/pm/PackageList;
    if-eqz p1, :cond_1

    .line 24860
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24862
    :cond_1
    monitor-exit v0

    return-object v3

    .line 24863
    .end local v1    # "N":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "packageList":Lcom/android/server/pm/PackageList;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 24847
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getPackageTargetSdkVersion(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 25505
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$8700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 25507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageUid(Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 25151
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25152
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 25151
    return v0
.end method

.method public getPackageUidInternal(Ljava/lang/String;II)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 25157
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25158
    const/16 v1, 0x3e8

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/pm/PackageManagerService;->access$6900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;III)I

    move-result v0

    .line 25157
    return v0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25562
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPermissionGidsLocked(Ljava/lang/String;I)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 25564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProcessesForUid(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 25555
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25556
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getProcessesForUidLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 25557
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSetupWizardPackageName()Ljava/lang/String;
    .locals 1

    .line 25349
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25548
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25549
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$9100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 25550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;
    .locals 5
    .param p1, "suspendedPackage"    # Ljava/lang/String;
    .param p2, "suspendingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 25127
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 25129
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 25130
    invoke-virtual {v1, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 25131
    .local v3, "pus":Landroid/content/pm/PackageUserState;
    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v4, :cond_1

    .line 25132
    iget-object v4, v3, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 25133
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 25134
    .local v4, "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v4, :cond_0

    iget-object v2, v4, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    :cond_0
    monitor-exit v0

    return-object v2

    .line 25137
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "pus":Landroid/content/pm/PackageUserState;
    .end local v4    # "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    :cond_1
    monitor-exit v0

    .line 25138
    return-object v2

    .line 25137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25038
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25039
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 25040
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25041
    .local v2, "allExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 25042
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 25043
    .local v3, "pus":Landroid/content/pm/PackageUserState;
    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v4, :cond_1

    .line 25044
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v3, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 25045
    iget-object v5, v3, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 25046
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 25047
    .local v5, "params":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    if-eqz v6, :cond_0

    .line 25048
    iget-object v6, v5, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 25044
    .end local v5    # "params":Landroid/content/pm/PackageUserState$SuspendParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25054
    .end local v3    # "pus":Landroid/content/pm/PackageUserState;
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    monitor-exit v0

    return-object v3

    .line 25055
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "allExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "suspendedPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25105
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25106
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 25107
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    .line 25108
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 25109
    .local v2, "pus":Landroid/content/pm/PackageUserState;
    iget-boolean v3, v2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v3, :cond_2

    .line 25110
    const/4 v3, 0x0

    .line 25111
    .local v3, "suspendingPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v2, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 25112
    iget-object v5, v2, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 25113
    const-string v5, "android"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25114
    monitor-exit v0

    return-object v3

    .line 25111
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25117
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0

    return-object v3

    .line 25120
    .end local v2    # "pus":Landroid/content/pm/PackageUserState;
    .end local v3    # "suspendingPackage":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 25121
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemUiServiceComponent()Landroid/content/ComponentName;
    .locals 2

    .line 25205
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPackageNames(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25386
    .local v0, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25387
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 25388
    .local v3, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 25389
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25391
    .end local v3    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_0
    goto :goto_0

    .line 25392
    :cond_1
    monitor-exit v1

    .line 25393
    return-object v0

    .line 25392
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUidTargetSdkVersion(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 25498
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25499
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$8600(Lcom/android/server/pm/PackageManagerService;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 25500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantImplicitAccess(ILandroid/content/Intent;IIZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "recipientAppId"    # I
    .param p4, "visibleUid"    # I
    .param p5, "direct"    # Z

    .line 25291
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25292
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 25293
    .local v1, "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {p1, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 25294
    .local v2, "recipientUid":I
    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 25298
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25299
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1, p4}, Lcom/android/server/pm/PackageManagerService;->access$7700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v3

    .line 25300
    .local v3, "instantApp":Z
    if-eqz v3, :cond_2

    .line 25301
    if-nez p5, :cond_1

    .line 25305
    monitor-exit v0

    return-void

    .line 25307
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v4

    .line 25308
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 25307
    invoke-virtual {v4, p1, p2, p3, v5}, Lcom/android/server/pm/InstantAppRegistry;->grantInstantAccessLPw(ILandroid/content/Intent;II)V

    goto :goto_0

    .line 25310
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$7800(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilter;

    move-result-object v4

    invoke-virtual {v4, v2, p4}, Lcom/android/server/pm/AppsFilter;->grantImplicitAccess(II)V

    .line 25312
    .end local v1    # "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "recipientUid":I
    .end local v3    # "instantApp":Z
    :goto_0
    monitor-exit v0

    .line 25313
    return-void

    .line 25295
    .restart local v1    # "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "recipientUid":I
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    .line 25312
    .end local v1    # "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "recipientUid":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25526
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantApplicationMetadataLPr(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 25528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSignatureCapability(III)Z
    .locals 3
    .param p1, "serverUid"    # I
    .param p2, "clientUid"    # I
    .param p3, "capability"    # I

    .line 24761
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    .line 24762
    .local v0, "serverSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    .line 24763
    .local v1, "clientSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24764
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 24763
    :goto_1
    return v2
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 25667
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 25754
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25755
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 25756
    :try_start_0
    monitor-exit v0

    return v1

    .line 25758
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 25759
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_1

    .line 25760
    monitor-exit v0

    return v1

    .line 25762
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 25763
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 25764
    .local v3, "installerPackageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 25765
    invoke-static {v4, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    monitor-exit v0

    .line 25764
    return v1

    .line 25766
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "installerPackageSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .locals 2
    .param p1, "restoringFromSig"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 24750
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    .line 24751
    .local v0, "sd":Landroid/content/pm/PackageParser$SigningDetails;
    if-nez v0, :cond_0

    .line 24752
    const/4 v1, 0x0

    return v1

    .line 24754
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result v1

    return v1
.end method

.method public isDataRestoreSafe([BLjava/lang/String;)Z
    .locals 2
    .param p1, "restoringFromSigHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .line 24740
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    .line 24741
    .local v0, "sd":Landroid/content/pm/PackageParser$SigningDetails;
    if-nez v0, :cond_0

    .line 24742
    const/4 v1, 0x0

    return v1

    .line 24744
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256Certificate([BI)Z

    move-result v1

    return v1
.end method

.method public isEnabledAndMatches(Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z
    .locals 3
    .param p1, "component"    # Landroid/content/pm/parsing/component/ParsedMainComponent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 25260
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25261
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 25262
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 25263
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInstantApp(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 24796
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 25317
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25318
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 25319
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 25318
    return v1

    .line 25320
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOnlyCoreApps()Z
    .locals 1

    .line 25569
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v0

    return v0
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 25235
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageEphemeral(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 25245
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 25247
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 25248
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPackagePersistent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 25360
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 25362
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 25363
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPackageStateProtected(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25240
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageSuspended(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25060
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25061
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 25062
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 25063
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 25771
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25772
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeededLPr(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 25773
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25007
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25008
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 25009
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_0

    .line 25010
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 25013
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 25014
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlatformSigned(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 24724
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 24725
    .local v0, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24726
    return v1

    .line 24728
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 24729
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_1

    .line 24731
    return v1

    .line 24733
    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 24734
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 24733
    :cond_3
    return v1
.end method

.method public isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/pm/ComponentInfo;

    .line 24973
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 24974
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 24973
    :goto_0
    return v0
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25834
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->isSuspendingAnyPackages(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSystemPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 25815
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25816
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$9300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25815
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public migrateLegacyObbData()V
    .locals 2

    .line 25725
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->migrateLegacyObbData()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25728
    goto :goto_0

    .line 25726
    :catch_0
    move-exception v0

    .line 25727
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25729
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 25533
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25534
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$8900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 25535
    monitor-exit v0

    .line 25536
    return-void

    .line 25535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pruneCachedApksInApex(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 25330
    .local p1, "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$7900(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25331
    return-void

    .line 25334
    :cond_0
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7900(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    .line 25335
    .local v0, "cacher":Lcom/android/server/pm/parsing/PackageCacher;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25336
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 25337
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25338
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 25339
    .local v4, "apkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "apksInApex":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 25340
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 25341
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    new-instance v8, Ljava/io/File;

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    .line 25339
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25336
    .end local v4    # "apkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "j":I
    .end local v6    # "apksInApex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25344
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    monitor-exit v1

    .line 25345
    return-void

    .line 25344
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pruneInstantApps()V
    .locals 1

    .line 25325
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps()V

    .line 25326
    return-void
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 25178
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25179
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$7200(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;

    move-result-object v0

    .line 25178
    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 25186
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 25187
    .local v0, "resolvedType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25188
    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object v1

    .line 25187
    return-object v1
.end method

.method public removeAllDistractingPackageRestrictions(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 25100
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(I)V

    .line 25101
    return-void
.end method

.method public removeAllNonSystemPackageSuspensions(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 25069
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 25071
    .local v1, "allPackages":[Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25072
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerService;->removeSuspensionsBySuspendingPackage([Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 25075
    return-void

    .line 25071
    .end local v1    # "allPackages":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeDistractingPackageRestrictions(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25094
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/PackageManagerService;->removeDistractingPackageRestrictions([Ljava/lang/String;I)V

    .line 25096
    return-void
.end method

.method public removeIsolatedUid(I)V
    .locals 2
    .param p1, "isolatedUid"    # I

    .line 25491
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 25493
    monitor-exit v0

    .line 25494
    return-void

    .line 25493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 25660
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25661
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 25662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNonSystemPackageSuspensions(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25079
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$JycGJrzHIngCbGMk68UBYZqLVhg;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$JycGJrzHIngCbGMk68UBYZqLVhg;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->removeSuspensionsBySuspendingPackage([Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 25083
    return-void
.end method

.method public removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 24868
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24869
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 24870
    monitor-exit v0

    .line 24871
    return-void

    .line 24870
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 10
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "isRequesterInstantApp"    # Z
    .param p7, "verificationBundle"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .line 25283
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$7600(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 25286
    return-void
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 25478
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIIZI)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "privateResolveFlags"    # I
    .param p5, "userId"    # I
    .param p6, "resolveForStart"    # Z
    .param p7, "filterCallingUid"    # I

    .line 25465
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$8300(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 25473
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$8400(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .locals 4
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25213
    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ProtectedPackages;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 25216
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 25217
    .local v0, "usersWithPoOrDo":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 25218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 25220
    :cond_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 25221
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 25222
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 25223
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 25221
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25226
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public setDeviceOwnerProtectedPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25230
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ProtectedPackages;->setDeviceOwnerProtectedPackages(Ljava/util/List;)V

    .line 25231
    return-void
.end method

.method public setEnableRollbackCode(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "enableRollbackCode"    # I

    .line 25634
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$9200(Lcom/android/server/pm/PackageManagerService;II)V

    .line 25635
    return-void
.end method

.method public setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;Ljava/util/Collection;)Z
    .locals 17
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 25400
    .local p3, "overlayPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "outUpdatedPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 25401
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 25402
    .local v0, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v7, 0x0

    if-eqz v3, :cond_a

    if-nez v0, :cond_0

    move-object/from16 v16, v0

    goto/16 :goto_4

    .line 25406
    :cond_0
    const/4 v8, 0x0

    .line 25407
    .local v8, "overlayPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 25408
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    .line 25409
    .local v9, "N":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v10

    .line 25410
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 25411
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 25412
    .local v11, "packageName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 25413
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v12, :cond_1

    .line 25414
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed to find package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25415
    monitor-exit v6

    return v7

    .line 25417
    :cond_1
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25410
    nop

    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 25421
    .end local v9    # "N":I
    .end local v10    # "i":I
    :cond_2
    const/4 v9, 0x0

    .line 25422
    .local v9, "updatedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 25424
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v10

    .line 25425
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 25426
    .local v11, "libName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v13, -0x1

    invoke-static {v12, v11, v13, v14}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v12

    .line 25428
    .local v12, "info":Landroid/content/pm/SharedLibraryInfo;
    if-nez v12, :cond_3

    .line 25429
    goto :goto_1

    .line 25431
    :cond_3
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v13, v12, v7, v2}, Lcom/android/server/pm/PackageManagerService;->access$8200(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/SharedLibraryInfo;II)Ljava/util/List;

    move-result-object v13

    .line 25433
    .local v13, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    if-nez v13, :cond_4

    .line 25434
    goto :goto_1

    .line 25436
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/VersionedPackage;

    .line 25437
    .local v15, "dependent":Landroid/content/pm/VersionedPackage;
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 25438
    move-object/from16 v16, v0

    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v16, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v15}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 25437
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 25439
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_5

    .line 25440
    move-object/from16 v0, v16

    const/4 v7, 0x0

    goto :goto_2

    .line 25442
    :cond_5
    invoke-virtual {v0, v11, v8, v2}, Lcom/android/server/pm/PackageSetting;->setOverlayPathsForLibrary(Ljava/lang/String;Ljava/util/List;I)V

    .line 25443
    invoke-virtual {v15}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 25444
    move-object/from16 v0, v16

    const/4 v7, 0x0

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "dependent":Landroid/content/pm/VersionedPackage;
    goto :goto_2

    .line 25436
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v0, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_6
    move-object/from16 v16, v0

    .line 25445
    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v11    # "libName":Ljava/lang/String;
    .end local v12    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v13    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v7, 0x0

    goto :goto_1

    .line 25425
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7
    move-object/from16 v16, v0

    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_3

    .line 25422
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_8
    move-object/from16 v16, v0

    .line 25448
    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 25449
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0, v8, v2}, Lcom/android/server/pm/PackageSetting;->setOverlayPaths(Ljava/util/List;I)V

    .line 25451
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25452
    if-eqz v9, :cond_9

    .line 25453
    invoke-interface {v5, v9}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 25455
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "overlayPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "updatedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_9
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25457
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 25458
    const/4 v0, 0x1

    return v0

    .line 25402
    .local v0, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_a
    move-object/from16 v16, v0

    .line 25403
    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_4
    :try_start_1
    const-string v0, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25404
    monitor-exit v6

    const/4 v0, 0x0

    return v0

    .line 25455
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 25353
    if-eqz p1, :cond_0

    .line 25354
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 25356
    :cond_0
    return-void
.end method

.method public setIntegrityVerificationResult(II)V
    .locals 2
    .param p1, "verificationId"    # I
    .param p2, "verificationResult"    # I

    .line 25790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 25791
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 25792
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25793
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25794
    return-void
.end method

.method public setKeepUninstalledPackages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24979
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24980
    const/4 v0, 0x0

    .line 24981
    .local v0, "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 24982
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 24983
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 24984
    .local v2, "packagesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24985
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24986
    .local v4, "oldPackage":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 24987
    goto :goto_1

    .line 24989
    :cond_0
    if-nez v0, :cond_1

    .line 24990
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 24992
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24984
    .end local v4    # "oldPackage":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24995
    .end local v2    # "packagesCount":I
    .end local v3    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6602(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Ljava/util/List;

    .line 24996
    if-eqz v0, :cond_3

    .line 24997
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 24998
    .local v2, "removedCount":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 24999
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$6700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 24998
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 25002
    .end local v2    # "removedCount":I
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1

    .line 25003
    return-void

    .line 25002
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setReadExternalStorageEnforced(Z)V
    .locals 3
    .param p1, "enforced"    # Z

    .line 25778
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25779
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 25780
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 25781
    monitor-exit v0

    return-void

    .line 25783
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz p1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v2, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 25784
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 25785
    monitor-exit v0

    .line 25786
    return-void

    .line 25785
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVisibilityLogging(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 25804
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25805
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 25806
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25807
    if-eqz v1, :cond_0

    .line 25810
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$7800(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/AppsFilter;->getFeatureConfig()Lcom/android/server/pm/AppsFilter$FeatureConfig;

    move-result-object v0

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-interface {v0, v2, p2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->enableLogging(IZ)V

    .line 25811
    return-void

    .line 25808
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25806
    .end local v1    # "pkg":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I
    .param p5, "intentSender"    # Landroid/content/IntentSender;
    .param p6, "flags"    # I

    .line 25678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 25679
    .local v0, "callerUid":I
    if-eqz v0, :cond_1

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 25680
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Not allowed to uninstall apexes"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25682
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v5, p5

    move-object v6, p1

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 25686
    .local v1, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    and-int/lit8 v2, p6, 0x2

    const/4 v3, -0x5

    if-nez v2, :cond_2

    .line 25687
    const-string v2, "Can\'t uninstall an apex for a single user"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 25689
    return-void

    .line 25691
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v2

    .line 25692
    .local v2, "am":Lcom/android/server/pm/ApexManager;
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 25694
    .local v5, "activePackage":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_3

    .line 25695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not an apex package"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 25697
    return-void

    .line 25699
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_4

    .line 25700
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-eqz v6, :cond_4

    .line 25701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25702
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " is not equal to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25701
    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 25704
    return-void

    .line 25706
    :cond_4
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/server/pm/ApexManager;->uninstallApex(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 25707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to uninstall apex "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 25710
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v4, v3}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 25713
    :goto_1
    return-void
.end method

.method public unsuspendForSuspendingPackage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "affectedUser"    # I

    .line 25829
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    .line 25830
    return-void
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 25717
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25718
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->updateRuntimePermissionsFingerprintLPr(I)V

    .line 25719
    monitor-exit v0

    .line 25720
    return-void

    .line 25719
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public userNeedsBadging(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 25268
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25269
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$7500(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 25270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public wasPackageEverLaunched(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 25253
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 25255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writePermissionSettings([IZ)V
    .locals 7
    .param p1, "userIds"    # [I
    .param p2, "async"    # Z

    .line 25744
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25745
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 25746
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-nez p2, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 25745
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25748
    :cond_1
    monitor-exit v0

    .line 25749
    return-void

    .line 25748
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeSettings(Z)V
    .locals 2
    .param p1, "async"    # Z

    .line 25733
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25734
    if-eqz p1, :cond_0

    .line 25735
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    goto :goto_0

    .line 25737
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 25739
    :goto_0
    monitor-exit v0

    .line 25740
    return-void

    .line 25739
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
