.class public Lcom/android/server/StorageManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mStorageManagerService:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 230
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$100(Lcom/android/server/StorageManagerService;)V

    goto :goto_0

    .line 232
    :cond_0
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$200(Lcom/android/server/StorageManagerService;)V

    goto :goto_0

    .line 234
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$300(Lcom/android/server/StorageManagerService;)V

    .line 237
    :cond_2
    :goto_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 251
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$600(Lcom/android/server/StorageManagerService;I)V

    .line 252
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 223
    new-instance v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 224
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    const-string/jumbo v1, "mount"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$000(Lcom/android/server/StorageManagerService;)V

    .line 226
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 241
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$402(Lcom/android/server/StorageManagerService;I)I

    .line 242
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 246
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$500(Lcom/android/server/StorageManagerService;I)V

    .line 247
    return-void
.end method
