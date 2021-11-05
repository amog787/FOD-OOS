.class final Lcom/android/server/locksettings/LockSettingsService$LocalService;
.super Lcom/android/internal/widget/LockSettingsInternal;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 3630
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/locksettings/LockSettingsService$1;

    .line 3630
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 2
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 3635
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;[BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method public armRebootEscrow()Z
    .locals 1

    .line 3705
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2000(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->armRebootEscrowIfNeeded()Z

    move-result v0

    return v0
.end method

.method public clearRebootEscrow()V
    .locals 3

    .line 3696
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2000(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3697
    return-void

    .line 3699
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2100(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->noLongerRequireStrongAuth(II)V

    .line 3701
    return-void
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 5
    .param p1, "userHandle"    # I

    .line 3666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3668
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->access$1900(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3672
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Querying password metrics for unified challenge profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3676
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3677
    nop

    .line 3678
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    return-object v2

    .line 3676
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3677
    throw v2
.end method

.method public isEscrowTokenActive(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 3645
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1600(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result v0

    return v0
.end method

.method public prepareRebootEscrow()V
    .locals 3

    .line 3683
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2000(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->prepareRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3684
    return-void

    .line 3686
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2100(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 3687
    return-void
.end method

.method public refreshStrongAuthTimeout(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 3710
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2100(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->refreshStrongAuthTimeout(I)V

    .line 3711
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 3640
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1500(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result v0

    return v0
.end method

.method public setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 3651
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-boolean v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-eqz v0, :cond_0

    .line 3655
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->access$1700(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0

    return v0

    .line 3652
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RebootEscrowListener;

    .line 3691
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2000(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    .line 3692
    return-void
.end method

.method public unlockUserWithToken(J[BI)Z
    .locals 1
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 3661
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->access$1800(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z

    move-result v0

    return v0
.end method
