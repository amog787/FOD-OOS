.class Lcom/android/server/StorageManagerService$12;
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

    .line 3366
    iput-object p1, p0, Lcom/android/server/StorageManagerService$12;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3369
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$4700()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3371
    :cond_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$12;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p2, p3}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/android/server/StorageManagerService;->access$4900(Lcom/android/server/StorageManagerService;II)V

    .line 3372
    return-void
.end method
