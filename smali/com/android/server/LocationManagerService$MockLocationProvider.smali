.class Lcom/android/server/LocationManagerService$MockLocationProvider;
.super Lcom/android/server/LocationManagerService$LocationProvider;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockLocationProvider"
.end annotation


# instance fields
.field private mCurrentRequest:Lcom/android/internal/location/ProviderRequest;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .line 1442
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1443
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 1444
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LocationManagerService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/LocationManagerService$1;

    .line 1438
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$MockLocationProvider;

    .line 1438
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mCurrentRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method


# virtual methods
.method public attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 1448
    instance-of v0, p1, Lcom/android/server/location/MockProvider;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1449
    invoke-super {p0, p1}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 1450
    return-void
.end method

.method public isMock()Z
    .locals 1

    .line 1453
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabledLocked(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_0

    .line 1459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1461
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/MockProvider;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1464
    goto :goto_0

    .line 1463
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1466
    .end local v0    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public setLocationLocked(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_0

    .line 1471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1473
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1476
    goto :goto_0

    .line 1475
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1478
    .end local v0    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1483
    invoke-super {p0, p1, p2}, Lcom/android/server/LocationManagerService$LocationProvider;->setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 1484
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mCurrentRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1485
    return-void
.end method

.method public setStatusLocked(ILandroid/os/Bundle;J)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "updateTime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1489
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_0

    .line 1490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1492
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1495
    goto :goto_0

    .line 1494
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1497
    .end local v0    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method
