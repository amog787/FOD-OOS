.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupContentObserver"
.end annotation


# instance fields
.field private final mDefaultImeChanged:Landroid/net/Uri;

.field private final mDeviceProvisioned:Landroid/net/Uri;

.field private final mPaired:Landroid/net/Uri;

.field private mUserIdsWithPendingChangesByOwner:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSetupComplete:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 12407
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 12408
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 12396
    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    .line 12398
    const-string p1, "device_provisioned"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    .line 12400
    const-string p1, "device_paired"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    .line 12401
    const-string p1, "default_input_method"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    .line 12404
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    .line 12409
    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;
    .param p1, "x1"    # I

    .line 12395
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->addPendingChangeByOwnerLocked(I)V

    return-void
.end method

.method private addPendingChangeByOwnerLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 12422
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12423
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 12427
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsWatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 12429
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12430
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12433
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 12434
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 12435
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12436
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12437
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12440
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12444
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 12445
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 12447
    :goto_0
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 12428
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupCompleteAndPaired()V

    .line 12449
    :cond_4
    :goto_2
    return-void
.end method

.method register()V
    .locals 4

    .line 12412
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12413
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12414
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsWatch:Z

    if-eqz v0, :cond_0

    .line 12415
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12417
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12418
    return-void
.end method
