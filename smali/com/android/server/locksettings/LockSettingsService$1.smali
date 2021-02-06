.class Lcom/android/server/locksettings/LockSettingsService$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 778
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$300(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 782
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 784
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$800(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 797
    :cond_1
    return-void
.end method
