.class Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAccountSession"
.end annotation


# instance fields
.field final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 9
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "expectActivityLaunch"    # Z

    .line 2255
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2256
    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 2259
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    .line 2260
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Bundle;

    .line 2275
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2276
    if-eqz p1, :cond_2

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2277
    const-string/jumbo v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2279
    .local v0, "removalAllowed":Z
    if-eqz v0, :cond_0

    .line 2280
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->getCallingUid()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->access$1700(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 2282
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 2283
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_2

    .line 2284
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " calling onResult() on response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2292
    goto :goto_0

    .line 2290
    :catch_0
    move-exception v2

    .line 2291
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling onResult()"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2295
    .end local v0    # "removalAllowed":Z
    .end local v1    # "response":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 2296
    return-void
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    .line 2271
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 2
    .param p1, "now"    # J

    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removeAccount, account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
