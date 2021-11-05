.class Lcom/android/server/print/RemotePrintServiceRecommendationService;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;,
        Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintServiceRecS"


# instance fields
.field private final mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

.field private final mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/printservice/recommendation/IRecommendationService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "callbacks"    # Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-direct {v0, p0, p3}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 139
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    const v4, 0x4000001

    invoke-virtual {v2, v0, v3, v4, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 145
    if-eqz v2, :cond_0

    .line 148
    monitor-exit v1

    .line 151
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    goto :goto_0

    .line 146
    .restart local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "serviceIntent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/print/RemotePrintServiceRecommendationService;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "userHandle":Landroid/os/UserHandle;
    .end local p3    # "callbacks":Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    throw v2

    .line 148
    .restart local v0    # "serviceIntent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/print/RemotePrintServiceRecommendationService;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "userHandle":Landroid/os/UserHandle;
    .restart local p3    # "callbacks":Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/print/RemotePrintServiceRecommendationService;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "userHandle":Landroid/os/UserHandle;
    .end local p3    # "callbacks":Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/print/RemotePrintServiceRecommendationService;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "userHandle":Landroid/os/UserHandle;
    .restart local p3    # "callbacks":Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemotePrintServiceRecS"

    const-string v2, "Could not connect to print service recommendation service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 46
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 46
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintServiceRecommendationService;
    .param p1, "x1"    # Landroid/printservice/recommendation/IRecommendationService;

    .line 46
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 46
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    return v0
.end method

.method private getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.printservice.recommendation.RecommendationService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 85
    const v3, 0x10000084

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 94
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 96
    .local v3, "installedService":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v4, "serviceName":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 101
    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 103
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 107
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    return-object v2

    .line 113
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not require permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v5, "Service is not part of the system"

    invoke-direct {v2, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v5, "Cannot read appInfo for service"

    invoke-direct {v2, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "installedService":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceName":Landroid/content/ComponentName;
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instead of exactly one service found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method close()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    invoke-interface {v2, v1}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "RemotePrintServiceRecS"

    const-string v4, "Could not unregister callbacks"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    .line 170
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 174
    :cond_1
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    const-string v0, "RemotePrintServiceRecS"

    const-string v1, "Service still connected on finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 184
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 185
    return-void
.end method
