.class Lcom/android/server/pm/PackageInstallerService$2;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 452
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$2;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$2;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$2;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->access$100(Lcom/android/server/pm/PackageInstallerService;)V

    .line 457
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
