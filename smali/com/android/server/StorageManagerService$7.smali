.class Lcom/android/server/StorageManagerService$7;
.super Lcom/android/internal/content/PackageMonitor;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 2081
    iput-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2084
    iget-object v0, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/StorageManagerService;->access$4400(Lcom/android/server/StorageManagerService;Ljava/lang/String;IZ)V

    .line 2085
    return-void
.end method
