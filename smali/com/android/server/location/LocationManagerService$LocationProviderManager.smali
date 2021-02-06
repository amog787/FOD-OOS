.class Lcom/android/server/location/LocationManagerService$LocationProviderManager;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/AbstractLocationProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationProviderManager"
.end annotation


# instance fields
.field private final mEnabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastCoarseLocation:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocation:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private final mName:Ljava/lang/String;

.field protected final mProvider:Lcom/android/server/location/MockableLocationProvider;

.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 764
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    .line 766
    new-instance v0, Lcom/android/server/location/LocationFudger;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$1200(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/SettingsHelper;->getCoarseLocationAccuracyM()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/location/LocationFudger;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 767
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    .line 768
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    .line 769
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    .line 772
    new-instance v0, Lcom/android/server/location/MockableLocationProvider;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/location/MockableLocationProvider;-><init>(Ljava/lang/Object;Lcom/android/server/location/AbstractLocationProvider$Listener;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    .line 773
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/location/LocationManagerService$1;

    .line 743
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method private setLastLocation(Landroid/location/Location;I)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "userId"    # I

    .line 846
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 850
    const-wide v1, 0x7fffffffffffffffL

    .line 851
    .local v1, "timeDeltaMs":J
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 852
    .local v3, "coarseLocation":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 853
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 854
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 856
    :cond_0
    const-wide/32 v4, 0x927c0

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    .line 857
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v5, p1}, Lcom/android/server/location/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 859
    .end local v1    # "timeDeltaMs":J
    .end local v3    # "coarseLocation":Landroid/location/Location;
    :cond_1
    monitor-exit v0

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1056
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1057
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    const-string v1, " [mock]"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    :cond_0
    const-string v1, ":"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1066
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v1

    .line 1067
    .local v1, "userIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1068
    aget v2, v1, v3

    .line 1069
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last coarse location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    .end local v2    # "userId":I
    goto :goto_1

    .line 1073
    :cond_1
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 1074
    .local v4, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1076
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "last location="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "last coarse location="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1073
    nop

    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1082
    .end local v1    # "userIds":[I
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/MockableLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1087
    return-void

    .line 1082
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLastLocation(II)Landroid/location/Location;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "permissionlevel"    # I

    .line 825
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 826
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    monitor-exit v0

    return-object v1

    .line 832
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local p1    # "userId":I
    .end local p2    # "permissionlevel":I
    throw v1

    .line 828
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .restart local p1    # "userId":I
    .restart local p2    # "permissionlevel":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    monitor-exit v0

    return-object v1

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMockProviderRequests()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->getCurrentRequest()Lcom/android/internal/location/ProviderRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 893
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider is not a test provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    throw v1

    .line 897
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public hasProvider()Z
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getProvider()Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public injectLastLocation(Landroid/location/Location;I)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "userId"    # I

    .line 838
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 840
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 842
    :cond_0
    monitor-exit v0

    .line 843
    return-void

    .line 842
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 977
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    .line 980
    const/4 v0, 0x0

    return v0

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 984
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 985
    .local v1, "enabled":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 988
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " provider saw user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " unexpectedly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 990
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    move-object v1, v2

    .line 993
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 994
    .end local v1    # "enabled":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onEnabledChangedLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 999
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    .line 1002
    return-void

    .line 1003
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 1007
    .local v3, "currentUserId":I
    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 1006
    .end local v3    # "currentUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    return-void

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1016
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1017
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1200(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move v0, v1

    .line 1019
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1020
    .local v1, "wasEnabled":Ljava/lang/Boolean;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v0, :cond_4

    .line 1021
    return-void

    .line 1024
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1026
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_5

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_5
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/MockableLocationProvider;->getCurrentRequest()Lcom/android/internal/location/ProviderRequest;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-nez v2, :cond_6

    .line 1032
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1033
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1037
    :cond_6
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/location/LocationManagerService;->access$1200(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/location/SettingsHelper;->setLocationProviderAllowed(Ljava/lang/String;ZI)V

    .line 1040
    if-eqz v1, :cond_7

    .line 1042
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    const-string v3, "fused"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v3, "passive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1043
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    .line 1044
    const-string v4, "android.location.extra.PROVIDER_NAME"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1045
    const-string v3, "android.location.extra.PROVIDER_ENABLED"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 1046
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 1047
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 1048
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1052
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v2, p0, v0}, Lcom/android/server/location/LocationManagerService;->access$1600(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V

    .line 1053
    return-void
.end method

.method public onReportLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .line 912
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    const-string v1, " provider"

    const-string v2, "LocationManagerService"

    if-nez v0, :cond_0

    .line 913
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blocking 0,0 location from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void

    .line 919
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blocking incomplete location from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getCurrentRequest()Lcom/android/internal/location/ProviderRequest;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    .line 926
    .local v0, "locationSettingsIgnored":Z
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v1, v3

    .line 927
    .local v4, "userId":I
    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 928
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 926
    .end local v4    # "userId":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 932
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lcom/android/server/location/LocationManagerService;->access$1400(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V

    .line 933
    return-void
.end method

.method public onReportLocation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 938
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1500(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1500(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->onReportLocation(Ljava/util/List;)V

    .line 943
    return-void

    .line 939
    :cond_1
    :goto_0
    return-void
.end method

.method public onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p2, "newState"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 948
    iget-boolean v0, p1, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    iget-boolean v1, p2, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    if-eq v0, v1, :cond_0

    .line 949
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 951
    :cond_0
    return-void
.end method

.method public onUserStarted(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 954
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 964
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 965
    monitor-exit v0

    .line 966
    return-void

    .line 965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserStopped(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 969
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 970
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 971
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 972
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 973
    monitor-exit v0

    .line 974
    return-void

    .line 973
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 905
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/MockableLocationProvider;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 906
    return-void
.end method

.method public setMockProvider(Lcom/android/server/location/MockProvider;)V
    .locals 5
    .param p1, "provider"    # Lcom/android/server/location/MockProvider;

    .line 788
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 794
    if-nez p1, :cond_4

    .line 795
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 796
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 797
    .local v2, "lastLocation":Landroid/location/Location;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 798
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 795
    .end local v2    # "lastLocation":Landroid/location/Location;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 802
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 803
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 804
    .local v2, "lastCoarseLocation":Landroid/location/Location;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 805
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 802
    .end local v2    # "lastCoarseLocation":Landroid/location/Location;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 809
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v1}, Lcom/android/server/location/LocationFudger;->resetOffsets()V

    .line 811
    :cond_4
    monitor-exit v0

    .line 812
    return-void

    .line 811
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProviderAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 863
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->setMockProviderAllowed(Z)V

    .line 869
    monitor-exit v0

    .line 870
    return-void

    .line 865
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider is not a test provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local p1    # "enabled":Z
    throw v1

    .line 869
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .restart local p1    # "enabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .line 873
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "locationProvider":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "33091107"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 886
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/MockableLocationProvider;->setMockProviderLocation(Landroid/location/Location;)V

    .line 887
    .end local v1    # "locationProvider":Ljava/lang/String;
    monitor-exit v0

    .line 888
    return-void

    .line 875
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider is not a test provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local p1    # "location":Landroid/location/Location;
    throw v1

    .line 887
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .restart local p1    # "location":Landroid/location/Location;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 784
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/MockableLocationProvider;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 785
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 901
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/MockableLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 902
    return-void
.end method
