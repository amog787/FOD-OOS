.class Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;
.super Lcom/android/server/location/LocationManagerService$LocationProviderManager;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassiveLocationProviderManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;

    .line 1092
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1093
    const-string/jumbo v0, "passive"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 1094
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Lcom/android/server/location/LocationManagerService$1;

    .line 1090
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public setMockProvider(Lcom/android/server/location/MockProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/MockProvider;

    .line 1104
    if-nez p1, :cond_0

    .line 1107
    return-void

    .line 1105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mock the passive provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 1098
    instance-of v0, p1, Lcom/android/server/location/PassiveProvider;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1099
    invoke-super {p0, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 1100
    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .line 1110
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->getProvider()Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/PassiveProvider;

    .line 1112
    .local v1, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1116
    .local v2, "identity":J
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1119
    nop

    .line 1120
    .end local v1    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .end local v2    # "identity":J
    monitor-exit v0

    .line 1121
    return-void

    .line 1118
    .restart local v1    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1119
    nop

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;
    .end local p1    # "location":Landroid/location/Location;
    throw v4

    .line 1120
    .end local v1    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .end local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;
    .restart local p1    # "location":Landroid/location/Location;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
