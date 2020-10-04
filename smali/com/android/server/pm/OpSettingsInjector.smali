.class public Lcom/android/server/pm/OpSettingsInjector;
.super Ljava/lang/Object;
.source "OpSettingsInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sMayChangeShareUidPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpSettingsInjector;->DEBUG:Z

    .line 26
    const-class v0, Lcom/android/server/pm/OpSettingsInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OpSettingsInjector;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/OpSettingsInjector;->sSharedUsers:Landroid/util/ArrayMap;

    .line 31
    const-string v1, "com.qualcomm.qti.dynamicddsservice"

    const-string v2, "com.qualcomm.qti.ims"

    const-string v3, "com.qti.confuridialer"

    const-string/jumbo v4, "net.oneplus.widget"

    const-string v5, "com.qualcomm.qti.uceShimService"

    const-string v6, "com.qti.dpmserviceapp"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OpSettingsInjector;->sMayChangeShareUidPackageList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static changeShareUid(Landroid/util/ArrayMap;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            ")V"
        }
    .end annotation

    .line 40
    .local p0, "mPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 43
    :cond_0
    const/16 v0, 0x1e8

    const-string v1, "enable.change.shareuid"

    invoke-static {v0, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    return-void

    .line 48
    :cond_1
    sget-object v0, Lcom/android/server/pm/OpSettingsInjector;->sMayChangeShareUidPackageList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    return-void

    .line 52
    :cond_2
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 53
    .local v0, "oldPackageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v1, v2, :cond_4

    .line 56
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_3

    const-string/jumbo v3, "null"

    goto :goto_0

    .line 58
    :cond_3
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 61
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 63
    sget-object v1, Lcom/android/server/pm/OpSettingsInjector;->sSharedUsers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 64
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 65
    sget-object v1, Lcom/android/server/pm/OpSettingsInjector;->sSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_4
    return-void

    .line 41
    .end local v0    # "oldPackageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_5
    :goto_1
    return-void
.end method

.method static setShareUsers(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p0, "sharedUsers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    sput-object p0, Lcom/android/server/pm/OpSettingsInjector;->sSharedUsers:Landroid/util/ArrayMap;

    .line 37
    return-void
.end method
