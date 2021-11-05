.class Lcom/android/server/location/LocationProviderProxy$1;
.super Lcom/android/internal/location/ILocationProviderManager$Stub;
.source "LocationProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 72
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0}, Lcom/android/internal/location/ILocationProviderManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .line 130
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationProviderProxy;->reportLocation(Landroid/location/Location;)V

    .line 131
    return-void
.end method

.method public onSetAdditionalProviderPackages(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    .local v0, "maxCount":I
    new-instance v1, Landroid/util/ArraySet;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 78
    .local v1, "allPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v0, :cond_0

    .line 80
    return-void

    .line 84
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$000(Lcom/android/server/location/LocationProviderProxy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x100000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 85
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 86
    :catch_0
    move-exception v4

    .line 87
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " specified unknown additional provider package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LocationProviderProxy"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    goto :goto_0

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 93
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 94
    monitor-exit v2

    return-void

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ServiceWatcher;->getBoundService()Lcom/android/server/ServiceWatcher$ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    .line 99
    .local v3, "service":Landroid/content/ComponentName;
    if-eqz v3, :cond_3

    .line 100
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v4, v1}, Lcom/android/server/location/LocationProviderProxy;->setPackageNames(Ljava/util/Set;)V

    .line 104
    .end local v3    # "service":Landroid/content/ComponentName;
    monitor-exit v2

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onSetAllowed(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .line 110
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v1}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/location/LocationProviderProxy;->setAllowed(Z)V

    .line 114
    :cond_0
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSetProperties(Lcom/android/internal/location/ProviderProperties;)V
    .locals 2
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 120
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v1}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/location/LocationProviderProxy;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 124
    :cond_0
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
