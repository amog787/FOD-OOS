.class Lcom/android/server/accounts/AccountManagerService$18;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$callback:Landroid/os/RemoteCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 4055
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$account:Landroid/accounts/Account;

    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    return-void
.end method

.method private handleAuthenticatorResponse(Z)V
    .locals 4
    .param p1, "accessGranted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4072
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$account:Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    const-string v3, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->access$2500(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    .line 4074
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 4072
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->access$2600(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 4075
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    .line 4076
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4077
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4078
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4080
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4068
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$18;->handleAuthenticatorResponse(Z)V

    .line 4069
    return-void
.end method

.method public onRequestContinued()V
    .locals 0

    .line 4064
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "value"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4058
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$18;->handleAuthenticatorResponse(Z)V

    .line 4059
    return-void
.end method
