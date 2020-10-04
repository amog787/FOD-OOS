.class Lcom/android/server/storage/CacheQuotaStrategy$1;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/CacheQuotaStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 127
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 131
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/storage/CacheQuotaStrategy$1$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy$1;Landroid/os/IBinder;)V

    .line 149
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 155
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-static {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->access$000(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/storage/CacheQuotaStrategy;->access$102(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
