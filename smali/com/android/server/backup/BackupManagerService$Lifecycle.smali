.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 884
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 885
    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$102(Lcom/android/server/backup/Trampoline;)Lcom/android/server/backup/Trampoline;

    .line 886
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 890
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$100()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    const-string v1, "backup"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 891
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 903
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$100()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/Trampoline;->stopUser(I)V

    .line 904
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 895
    if-nez p1, :cond_0

    .line 896
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$100()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->initializeService()V

    .line 898
    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$100()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/Trampoline;->unlockUser(I)V

    .line 899
    return-void
.end method
