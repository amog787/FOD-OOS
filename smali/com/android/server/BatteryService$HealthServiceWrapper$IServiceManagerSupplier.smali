.class interface abstract Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IServiceManagerSupplier"
.end annotation


# virtual methods
.method public get()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    return-object v0
.end method
