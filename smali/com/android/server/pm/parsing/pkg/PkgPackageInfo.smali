.class interface abstract Lcom/android/server/pm/parsing/pkg/PkgPackageInfo;
.super Ljava/lang/Object;
.source "PkgPackageInfo.java"


# virtual methods
.method public abstract getActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfigPreferences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeatureGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstrumentations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongVersionCode()J
.end method

.method public abstract getOverlayCategory()Ljava/lang/String;
.end method

.method public abstract getOverlayPriority()I
.end method

.method public abstract getOverlayTarget()Ljava/lang/String;
.end method

.method public abstract getOverlayTargetName()Ljava/lang/String;
.end method

.method public abstract getPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReqFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestedPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequiredAccountType()Ljava/lang/String;
.end method

.method public abstract getRestrictedAccountType()Ljava/lang/String;
.end method

.method public abstract getServices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSharedUserId()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSharedUserLabel()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSplitRevisionCodes()[I
.end method

.method public abstract getVersionCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVersionCodeMajor()I
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract isCoreApp()Z
.end method

.method public abstract isOverlayIsStatic()Z
.end method

.method public abstract isRequiredForAllUsers()Z
.end method

.method public abstract isStub()Z
.end method
