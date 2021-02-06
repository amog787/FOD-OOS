.class Lcom/android/server/notification/ManagedServices$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mService:Landroid/os/IInterface;

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field final synthetic val$isSystem:Z

.field final synthetic val$servicesBindingTag:Landroid/util/Pair;

.field final synthetic val$targetSdkVersion:I

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices;ILandroid/util/Pair;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ManagedServices;

    .line 1347
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iput p2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    iput-object p3, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    iput-boolean p4, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    iput p5, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1379
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->access$000(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " binding died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-static {v1, p0, p1, v2}, Lcom/android/server/notification/ManagedServices;->access$400(Lcom/android/server/notification/ManagedServices;Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 1382
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->access$100(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->access$100(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1384
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->access$600(Lcom/android/server/notification/ManagedServices;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/ManagedServices$1$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/notification/ManagedServices$1$1;-><init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1391
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->access$000(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not rebinding in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as a previous rebind attempt was made: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :goto_0
    monitor-exit v0

    .line 1395
    return-void

    .line 1394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1399
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNullBinding() called with: name = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->access$700(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1401
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1352
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->access$000(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v0, 0x0

    .line 1354
    .local v0, "added":Z
    const/4 v1, 0x0

    .line 1355
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1356
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->access$100(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v3, p2}, Lcom/android/server/notification/ManagedServices;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    .line 1359
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget v7, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    iget-boolean v8, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    iget v10, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    move-object v6, p1

    move-object v9, p0

    invoke-static/range {v4 .. v10}, Lcom/android/server/notification/ManagedServices;->access$200(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    move-object v1, v3

    .line 1361
    const/4 v3, 0x0

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1362
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->access$300(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 1365
    goto :goto_0

    .line 1363
    :catch_0
    move-exception v3

    .line 1364
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v4, v4, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v5, "Failed to linkToDeath, already dead"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1366
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1367
    if-eqz v0, :cond_0

    .line 1368
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1370
    :cond_0
    return-void

    .line 1366
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1374
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->access$000(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connection lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-void
.end method
