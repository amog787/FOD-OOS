.class Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 22661
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 22664
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22665
    const/4 v0, 0x0

    return v0

    .line 22667
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 22668
    const/4 v0, 0x1

    return v0

    .line 22670
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 22671
    const/4 v0, 0x2

    return v0

    .line 22673
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 22678
    const/4 v0, 0x1

    return v0
.end method
