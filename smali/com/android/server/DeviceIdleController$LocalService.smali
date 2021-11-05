.class Lcom/android/server/DeviceIdleController$LocalService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/DeviceIdleInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 1916
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "x1"    # Lcom/android/server/DeviceIdleController$1;

    .line 1916
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 1944
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1946
    return-void
.end method

.method public addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "duration"    # J
    .param p4, "sync"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 1952
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v1, 0x0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V

    .line 1953
    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1937
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V

    .line 1938
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 2008
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationWhitelistDuration()J
    .locals 2

    .line 1958
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    return-wide v0
.end method

.method public getPowerSaveTempWhitelistAppIds()[I
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .locals 1

    .line 1986
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    return-object v0
.end method

.method public isAppOnWhitelist(I)Z
    .locals 1
    .param p1, "appid"    # I

    .line 1975
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isAppOnWhitelistInternal(I)Z

    move-result v0

    return v0
.end method

.method public onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .locals 2
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "active"    # Z

    .line 1919
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1920
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1, p1, p2}, Lcom/android/server/DeviceIdleController;->access$2400(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 1921
    monitor-exit v0

    .line 1922
    return-void

    .line 1921
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .locals 1
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "minState"    # I

    .line 1927
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->access$2500(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    .line 1928
    return-void
.end method

.method public registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 1996
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 1997
    return-void
.end method

.method public setAlarmsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 1969
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setAlarmsActive(Z)V

    .line 1970
    return-void
.end method

.method public setJobsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 1963
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setJobsActive(Z)V

    .line 1964
    return-void
.end method

.method public unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .locals 1
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 1932
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$2600(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    .line 1933
    return-void
.end method

.method public unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 2001
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$2700(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 2002
    return-void
.end method
