.class Lcom/android/server/accounts/AccountManagerService$11;
.super Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "accountName"    # Ljava/lang/String;
    .param p7, "authDetailsRequired"    # Z
    .param p8, "updateLastAuthenticationTime"    # Z
    .param p9, "isPasswordForwardingAllowed"    # Z

    .line 3371
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$11;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$authTokenType:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$options:Landroid/os/Bundle;

    iput-object p13, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$accountType:Ljava/lang/String;

    invoke-direct/range {p0 .. p9}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3374
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$11;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$authTokenType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$options:Landroid/os/Bundle;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3376
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    .line 3380
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3381
    .local v0, "requiredFeaturesStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->toDebugString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", startAddAccountSession, accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requiredFeatures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3383
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3381
    return-object v1
.end method
