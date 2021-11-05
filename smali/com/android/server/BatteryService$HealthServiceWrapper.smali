.class public final Lcom/android/server/BatteryService$HealthServiceWrapper;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HealthServiceWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    }
.end annotation


# static fields
.field public static final INSTANCE_HEALTHD:Ljava/lang/String; = "backup"

.field public static final INSTANCE_VENDOR:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "HealthServiceWrapper"

.field private static final sAllInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

.field private mInstanceName:Ljava/lang/String;

.field private final mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/health/V2_0/IHealth;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1581
    const-string v0, "default"

    const-string v1, "backup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1582
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    .line 1581
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1584
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 1585
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HealthServiceHwbinder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1592
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1599
    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 1576
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 1576
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 1576
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 1576
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService$HealthServiceWrapper;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 1576
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method getHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getLastService()Landroid/hardware/health/V2_0/IHealth;
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/health/V2_0/IHealth;

    return-object v0
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1609
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$HealthServiceWrapper$1;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper;)V

    new-instance v1, Lcom/android/server/BatteryService$HealthServiceWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$HealthServiceWrapper$2;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V

    .line 1611
    return-void
.end method

.method init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    .param p2, "managerSupplier"    # Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;
    .param p3, "healthSupplier"    # Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1633
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 1638
    iput-object p3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    .line 1641
    const/4 v1, 0x0

    .line 1642
    .local v1, "newService":Landroid/hardware/health/V2_0/IHealth;
    sget-object v2, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1643
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HealthInitGetService_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1600(Ljava/lang/String;)V

    .line 1645
    :try_start_0
    invoke-interface {p3, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 1649
    :goto_1
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1650
    goto :goto_2

    .line 1649
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1650
    throw v0

    .line 1646
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1651
    :goto_2
    if-eqz v1, :cond_0

    .line 1652
    iput-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    .line 1653
    iget-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1654
    goto :goto_3

    .line 1656
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1658
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1664
    if-eqz p1, :cond_2

    .line 1665
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    .line 1666
    invoke-interface {p1, v0, v1, v2}, Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V

    .line 1670
    :cond_2
    const-string v0, "HealthInitRegisterNotification"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1600(Ljava/lang/String;)V

    .line 1671
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1673
    :try_start_1
    invoke-interface {p2}, Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;->get()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    const-string v2, "android.hardware.health@2.0::IHealth"

    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v0, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1676
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1677
    nop

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "health: HealthServiceWrapper listening to instance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HealthServiceWrapper"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    return-void

    .line 1676
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1677
    throw v0

    .line 1659
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    .line 1661
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1659
    const-string v3, "No IHealth service instance among %s is available. Perhaps no permission?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    .end local v1    # "newService":Landroid/hardware/health/V2_0/IHealth;
    :cond_4
    throw v0
.end method
