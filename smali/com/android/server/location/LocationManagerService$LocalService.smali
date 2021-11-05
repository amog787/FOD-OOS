.class Lcom/android/server/location/LocationManagerService$LocalService;
.super Landroid/location/LocationManagerInternal;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 2947
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Landroid/location/LocationManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Lcom/android/server/location/LocationManagerService$1;

    .line 2947
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2951
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    .line 2953
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v1, :cond_0

    .line 2954
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2957
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2958
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2963
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$3600(Lcom/android/server/location/LocationManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 2964
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getPackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2965
    const/4 v0, 0x1

    return v0

    .line 2967
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_0
    goto :goto_0

    .line 2968
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public sendNiResponse(II)V
    .locals 1
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 2973
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1500(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2974
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1500(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->sendNiResponse(II)V

    .line 2976
    :cond_0
    return-void
.end method
