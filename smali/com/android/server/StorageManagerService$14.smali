.class Lcom/android/server/StorageManagerService$14;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
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

    .line 3984
    iput-object p1, p0, Lcom/android/server/StorageManagerService$14;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3987
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$5300()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3989
    :cond_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$14;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p2, p3}, Lcom/android/server/StorageManagerService;->access$5400(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result v0

    .line 3990
    .local v0, "mountMode":I
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 3991
    invoke-virtual {v1, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3993
    .local v1, "isUidActive":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 3994
    iget-object v2, p0, Lcom/android/server/StorageManagerService$14;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2, p2, v0}, Lcom/android/server/StorageManagerService;->access$5500(Lcom/android/server/StorageManagerService;II)V

    .line 3996
    :cond_2
    return-void
.end method
