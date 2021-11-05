.class public Lcom/android/server/appprediction/AppPredictionManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "AppPredictionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/appprediction/AppPredictionManagerService;",
        "Lcom/android/server/appprediction/AppPredictionPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appprediction/AppPredictionManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x10401fa

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 68
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 55
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 55
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/server/appprediction/AppPredictionManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/appprediction/AppPredictionManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 55
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/appprediction/AppPredictionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appprediction/AppPredictionManagerService;
    .param p1, "x1"    # I

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected enforceCallingPermissionForManagement()V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/server/appprediction/AppPredictionManagerService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_APP_PREDICTIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .locals 1

    .line 104
    const v0, 0x1d4c0

    return v0
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/appprediction/AppPredictionPerUserService;
    .locals 2
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z

    .line 73
    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;Ljava/lang/Object;I)V

    return-object v0
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionManagerService;->newServiceLocked(IZ)Lcom/android/server/appprediction/AppPredictionPerUserService;

    move-result-object p1

    return-object p1
.end method

.method protected onServicePackageRestartedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 97
    .local v0, "service":Lcom/android/server/appprediction/AppPredictionPerUserService;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onPackageRestartedLocked()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 89
    .local v0, "service":Lcom/android/server/appprediction/AppPredictionPerUserService;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onPackageUpdatedLocked()V

    .line 92
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 78
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;Lcom/android/server/appprediction/AppPredictionManagerService$1;)V

    const-string v1, "app_prediction"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 79
    return-void
.end method
