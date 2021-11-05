.class public Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;
.super Lcom/android/server/appbinding/finders/AppServiceFinder;
.source "CarrierMessagingClientServiceFinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/appbinding/finders/AppServiceFinder<",
        "Landroid/service/carrier/CarrierMessagingClientService;",
        "Landroid/service/carrier/ICarrierMessagingClientService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field private final mRoleManager:Landroid/app/role/RoleManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 51
    .local p2, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appbinding/finders/AppServiceFinder;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V

    .line 121
    new-instance v0, Lcom/android/server/appbinding/finders/-$$Lambda$CarrierMessagingClientServiceFinder$HEVyQ3IEZ8Eseze74Vyp3NHEREg;

    invoke-direct {v0, p0}, Lcom/android/server/appbinding/finders/-$$Lambda$CarrierMessagingClientServiceFinder$HEVyQ3IEZ8Eseze74Vyp3NHEREg;-><init>(Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 53
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;

    move-result-object p1

    return-object p1
.end method

.method public asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;
    .locals 1
    .param p1, "obj"    # Landroid/os/IBinder;

    .line 74
    invoke-static {p1}, Landroid/service/carrier/ICarrierMessagingClientService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;

    move-result-object v0

    return-object v0
.end method

.method public getAppDescription()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "[Default SMS app]"

    return-object v0
.end method

.method public getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I
    .locals 1
    .param p1, "constants"    # Lcom/android/server/appbinding/AppBindingConstants;

    .line 118
    iget v0, p1, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    return v0
.end method

.method protected getServiceAction()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "android.telephony.action.CARRIER_MESSAGING_CLIENT_SERVICE"

    return-object v0
.end method

.method protected getServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/service/carrier/CarrierMessagingClientService;",
            ">;"
        }
    .end annotation

    .line 69
    const-class v0, Landroid/service/carrier/CarrierMessagingClientService;

    return-object v0
.end method

.method protected getServicePermission()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "android.permission.BIND_CARRIER_MESSAGING_CLIENT_SERVICE"

    return-object v0
.end method

.method public getTargetPackage(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 89
    iget-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 90
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 89
    const-string v2, "android.app.role.SMS"

    invoke-virtual {v0, v2, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method protected isEnabled(Lcom/android/server/appbinding/AppBindingConstants;)Z
    .locals 2
    .param p1, "constants"    # Lcom/android/server/appbinding/AppBindingConstants;

    .line 58
    iget-boolean v0, p1, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$CarrierMessagingClientServiceFinder(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "role"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 122
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method

.method public startMonitoring()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 102
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 103
    return-void
.end method

.method protected validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "service"    # Landroid/content/pm/ServiceInfo;

    .line 107
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 108
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 110
    .local v1, "process":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 111
    :cond_1
    :goto_0
    const-string v2, "Service must not run on the main process"

    return-object v2
.end method
