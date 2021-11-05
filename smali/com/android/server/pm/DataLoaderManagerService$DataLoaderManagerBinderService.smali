.class final Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;
.super Landroid/content/pm/IDataLoaderManager$Stub;
.source "DataLoaderManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DataLoaderManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DataLoaderManagerBinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/DataLoaderManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DataLoaderManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/DataLoaderManagerService;

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-direct {p0}, Landroid/content/pm/IDataLoaderManager$Stub;-><init>()V

    return-void
.end method

.method private resolveDataLoaderComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 9
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 102
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$100(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const-string v2, "DataLoaderManager"

    if-nez v0, :cond_0

    .line 104
    const-string v3, "PackageManager is not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v1

    .line 107
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.LOAD_DATA"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    const/4 v4, 0x0

    .line 110
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 111
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 118
    .local v5, "numServices":I
    const/4 v6, 0x0

    .local v6, "i":I
    if-ge v6, v5, :cond_2

    .line 119
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 120
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v2, "resolved":Landroid/content/ComponentName;
    return-object v2

    .line 126
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "resolved":Landroid/content/ComponentName;
    .end local v6    # "i":I
    :cond_2
    const-string v6, "Didn\'t find any matching data loader service provider."

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v1

    .line 112
    .end local v5    # "numServices":I
    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find data loader service provider in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v1
.end method


# virtual methods
.method public bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z
    .locals 8
    .param p1, "dataLoaderId"    # I
    .param p2, "params"    # Landroid/content/pm/DataLoaderParamsParcel;
    .param p3, "listener"    # Landroid/content/pm/IDataLoaderStatusListener;

    .line 66
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 68
    monitor-exit v0

    return v2

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/DataLoaderParamsParcel;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/DataLoaderParamsParcel;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->resolveDataLoaderComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v1

    .line 73
    .local v1, "dataLoaderComponent":Landroid/content/ComponentName;
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid component: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for ID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DataLoaderManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v3

    .line 79
    :cond_1
    new-instance v4, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    iget-object v5, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-direct {v4, v5, p1, p3}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;-><init>(Lcom/android/server/pm/DataLoaderManagerService;ILandroid/content/pm/IDataLoaderStatusListener;)V

    .line 82
    .local v4, "connection":Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    iget-object v6, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v6}, Lcom/android/server/pm/DataLoaderManagerService;->access$100(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object v6

    .line 85
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 84
    invoke-virtual {v6, v5, v4, v2, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to bind to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for ID="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "DataLoaderManager"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v2}, Lcom/android/server/pm/DataLoaderManagerService;->access$100(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 89
    return v3

    .line 91
    :cond_2
    return v2

    .line 70
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "dataLoaderComponent":Landroid/content/ComponentName;
    .end local v4    # "connection":Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
    .end local v5    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDataLoader(I)Landroid/content/pm/IDataLoader;
    .locals 3
    .param p1, "dataLoaderId"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 138
    .local v1, "serviceConnection":Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
    if-nez v1, :cond_0

    .line 139
    monitor-exit v0

    return-object v2

    .line 141
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->getDataLoader()Landroid/content/pm/IDataLoader;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 142
    .end local v1    # "serviceConnection":Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbindFromDataLoader(I)V
    .locals 3
    .param p1, "dataLoaderId"    # I

    .line 151
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 154
    .local v1, "serviceConnection":Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
    if-nez v1, :cond_0

    .line 155
    monitor-exit v0

    return-void

    .line 157
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->destroy()V

    .line 158
    .end local v1    # "serviceConnection":Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
