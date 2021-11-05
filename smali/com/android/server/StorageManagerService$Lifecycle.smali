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

    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 269
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 280
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$100(Lcom/android/server/StorageManagerService;)V

    goto :goto_0

    .line 282
    :cond_0
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$200(Lcom/android/server/StorageManagerService;)V

    goto :goto_0

    .line 284
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$300(Lcom/android/server/StorageManagerService;)V

    .line 287
    :cond_2
    :goto_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$600(Lcom/android/server/StorageManagerService;I)V

    .line 302
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 273
    new-instance v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 274
    const-string/jumbo v1, "mount"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$000(Lcom/android/server/StorageManagerService;)V

    .line 276
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 306
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;I)V

    .line 307
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$402(Lcom/android/server/StorageManagerService;I)I

    .line 292
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 296
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$500(Lcom/android/server/StorageManagerService;I)V

    .line 297
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 311
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$800(Lcom/android/server/StorageManagerService;Landroid/os/UserHandle;)V

    .line 312
    return-void
.end method
