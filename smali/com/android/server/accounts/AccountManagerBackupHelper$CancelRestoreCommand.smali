.class final Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelRestoreCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;
    .param p2, "x1"    # Lcom/android/server/accounts/AccountManagerBackupHelper$1;

    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$400(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$502(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)Ljava/util/List;

    .line 312
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$800(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$800(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->unregister()V

    .line 314
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$802(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    .line 316
    :cond_0
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
