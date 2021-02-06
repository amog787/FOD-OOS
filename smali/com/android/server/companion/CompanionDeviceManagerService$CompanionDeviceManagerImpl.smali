.class Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
.super Landroid/companion/ICompanionDeviceManager$Stub;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompanionDeviceManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 272
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>()V

    return-void
.end method

.method private callerCanManageCompanionDevices()Z
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkCallerIsSystemOr(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;I)V

    .line 366
    return-void
.end method

.method private checkCallerIsSystemOr(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Must be called by either same user or system"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1100(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 376
    return-void
.end method

.method private checkCanCallNotificationApi(Ljava/lang/String;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    .line 434
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "App must have an association before calling this API"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 436
    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    .line 437
    return-void
.end method

.method private checkUsesFeature(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 440
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 446
    .local v0, "reqFeatures":[Landroid/content/pm/FeatureInfo;
    const-string v1, "android.software.companion_device_setup"

    .line 447
    .local v1, "requiredFeature":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v2

    .line 448
    .local v2, "numFeatures":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 449
    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 448
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Must declare uses-feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in manifest to use this API"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic lambda$associate$0(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Landroid/companion/ICompanionDeviceDiscoveryService;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "request"    # Landroid/companion/AssociationRequest;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "service"    # Landroid/companion/ICompanionDeviceDiscoveryService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 309
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/companion/Association;>;"
    invoke-interface {p3, p0, p1, p2, v0}, Landroid/companion/ICompanionDeviceDiscoveryService;->startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Lcom/android/internal/infra/AndroidFuture;)V

    .line 310
    return-object v0
.end method

.method static synthetic lambda$getAssociations$2(Landroid/companion/Association;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Landroid/companion/Association;

    .line 345
    iget-object v0, p0, Landroid/companion/Association;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$isDeviceAssociatedForWifiConnection$3(Ljava/lang/String;Landroid/companion/Association;)Z
    .locals 1
    .param p0, "macAddress"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/companion/Association;

    .line 428
    iget-object v0, p1, Landroid/companion/Association;->deviceAddress:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    .locals 6
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-direct {p0, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    .line 298
    .local v0, "userId":I
    invoke-direct {p0, p3, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    .line 300
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$402(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;

    .line 301
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$502(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;

    .line 302
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$602(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    invoke-interface {p2}, Landroid/companion/IFindDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 307
    .local v1, "callingIdentity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$800(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/infra/PerUser;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/infra/PerUser;->forUser(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/ServiceConnector;

    new-instance v5, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;

    invoke-direct {v5, p1, p3, p2}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;-><init>(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;)V

    invoke-interface {v4, v5}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v4

    new-instance v5, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$oYSpdTmzLHvD4Kqu1cDfzfZuvwo;

    invoke-direct {v5, p0, p2}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$oYSpdTmzLHvD4Kqu1cDfzfZuvwo;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;Landroid/companion/IFindDeviceCallback;)V

    .line 311
    invoke-static {v5}, Lcom/android/internal/util/FunctionalUtils;->uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v4

    .line 307
    invoke-static {v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$702(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    nop

    .line 323
    return-void

    .line 321
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    throw v3
.end method

.method public disassociate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceMacAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    .line 355
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->removeAssociation(ILjava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->callerCanManageCompanionDevices()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;I)V

    .line 341
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    .line 343
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 344
    invoke-static {v1, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU;

    .line 343
    invoke-static {v1, v2}, Lcom/android/internal/util/CollectionUtils;->map(Ljava/util/Set;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "setting":Ljava/lang/String;
    new-instance v1, Landroid/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v1, v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 416
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_COMPANION_DEVICES"

    const-string/jumbo v2, "isDeviceAssociated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 422
    .local v0, "bypassMacPermission":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 423
    return v1

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 427
    invoke-static {v1, p3, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$cINw8CcxUv2OUJ3WjIWqgJ72MPI;

    invoke-direct {v2, p2}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$cINw8CcxUv2OUJ3WjIWqgJ72MPI;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-static {v1, v2}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/Set;Ljava/util/function/Predicate;)Z

    move-result v1

    return v1
.end method

.method public synthetic lambda$associate$1$CompanionDeviceManagerService$CompanionDeviceManagerImpl(Landroid/companion/IFindDeviceCallback;Landroid/companion/Association;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "callback"    # Landroid/companion/IFindDeviceCallback;
    .param p2, "association"    # Landroid/companion/Association;
    .param p3, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 312
    if-nez p3, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->addAssociation(Landroid/companion/Association;)V

    goto :goto_0

    .line 315
    :cond_0
    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "Failed to discover device(s)"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No devices found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/companion/IFindDeviceCallback;->onFailure(Ljava/lang/CharSequence;)V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 319
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 461
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "CompanionDeviceManagerService"

    const-string v2, "Error during IPC"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const-class v1, Landroid/os/RemoteException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v1

    .line 384
    .local v1, "userId":I
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 385
    invoke-static {v3, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 387
    invoke-virtual {v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x43fa0000    # 500.0f

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v3

    .line 391
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "packageTitle":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 394
    .local v3, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 396
    invoke-static {v1, p1, v2}, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->launcherIntent(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x54000000

    .line 394
    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    return-object v5

    .line 401
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    throw v5
.end method

.method public stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$500(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 330
    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$400(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 331
    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$600(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 334
    :cond_0
    return-void
.end method
