.class final Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageChangeObserverDeathRecipient"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageChangeObserver;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/IPackageChangeObserver;)V
    .locals 0
    .param p2, "observer"    # Landroid/content/pm/IPackageChangeObserver;

    .line 24620
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24621
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;->mObserver:Landroid/content/pm/IPackageChangeObserver;

    .line 24622
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 24626
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 24627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;->mObserver:Landroid/content/pm/IPackageChangeObserver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24628
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of mPackageChangeObservers after removing dead observer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24629
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24628
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24630
    monitor-exit v0

    .line 24631
    return-void

    .line 24630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
