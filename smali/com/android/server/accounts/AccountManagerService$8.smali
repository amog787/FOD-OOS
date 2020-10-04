.class Lcom/android/server/accounts/AccountManagerService$8;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$callerPkgSigDigest:[B

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z

    .line 2910
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    move v2, p12

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    move/from16 v2, p14

    iput v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "result"    # Landroid/os/Bundle;

    .line 2934
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2935
    if-eqz v1, :cond_8

    .line 2936
    const-string v2, "authTokenLabelKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "intent"

    if-eqz v2, :cond_0

    .line 2937
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    new-instance v8, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v8, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    iget-object v9, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->access$1800(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 2944
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2945
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2946
    invoke-virtual {v0, v4}, Lcom/android/server/accounts/AccountManagerService$8;->onResult(Landroid/os/Bundle;)V

    .line 2947
    return-void

    .line 2949
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2950
    .local v2, "authToken":Ljava/lang/String;
    const/4 v13, 0x5

    if-eqz v2, :cond_6

    .line 2951
    const-string v4, "authAccount"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2952
    .local v14, "name":Ljava/lang/String;
    const-string v4, "accountType"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2953
    .local v15, "type":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 2958
    :cond_1
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v14, v15}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    .line 2959
    .local v11, "resultAccount":Landroid/accounts/Account;
    iget-boolean v4, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-nez v4, :cond_2

    .line 2960
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-static {v4, v5, v11, v6, v2}, Lcom/android/server/accounts/AccountManagerService;->access$1900(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2966
    :cond_2
    const-wide/16 v4, 0x0

    const-string v6, "android.accounts.expiry"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 2968
    .local v16, "expiryMillis":J
    iget-boolean v4, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-eqz v4, :cond_4

    .line 2969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v16, v4

    if-lez v4, :cond_3

    .line 2970
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    iget-object v9, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    move-object v10, v2

    move-object/from16 v18, v11

    .end local v11    # "resultAccount":Landroid/accounts/Account;
    .local v18, "resultAccount":Landroid/accounts/Account;
    move-wide/from16 v11, v16

    invoke-static/range {v4 .. v12}, Lcom/android/server/accounts/AccountManagerService;->access$2000(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 2969
    .end local v18    # "resultAccount":Landroid/accounts/Account;
    .restart local v11    # "resultAccount":Landroid/accounts/Account;
    :cond_3
    move-object/from16 v18, v11

    .end local v11    # "resultAccount":Landroid/accounts/Account;
    .restart local v18    # "resultAccount":Landroid/accounts/Account;
    goto :goto_1

    .line 2968
    .end local v18    # "resultAccount":Landroid/accounts/Account;
    .restart local v11    # "resultAccount":Landroid/accounts/Account;
    :cond_4
    move-object/from16 v18, v11

    .end local v11    # "resultAccount":Landroid/accounts/Account;
    .restart local v18    # "resultAccount":Landroid/accounts/Account;
    goto :goto_1

    .line 2954
    .end local v16    # "expiryMillis":J
    .end local v18    # "resultAccount":Landroid/accounts/Account;
    :cond_5
    :goto_0
    const-string/jumbo v3, "the type and name should not be empty"

    invoke-virtual {v0, v13, v3}, Lcom/android/server/accounts/AccountManagerService$8;->onError(ILjava/lang/String;)V

    .line 2956
    return-void

    .line 2981
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2982
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_8

    iget-boolean v4, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-nez v4, :cond_8

    .line 2989
    nop

    .line 2990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2989
    invoke-virtual {v0, v4, v3}, Lcom/android/server/accounts/AccountManagerService$8;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2992
    const-string v4, "invalid intent in bundle returned"

    invoke-virtual {v0, v13, v4}, Lcom/android/server/accounts/AccountManagerService$8;->onError(ILjava/lang/String;)V

    .line 2994
    return-void

    .line 2996
    :cond_7
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 2999
    const-string v7, "authFailedMessage"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 3000
    invoke-static {v8}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v10

    .line 2996
    const-string v9, "android"

    move-object v8, v3

    invoke-static/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->access$2100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3003
    .end local v2    # "authToken":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-super/range {p0 .. p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 3004
    return-void
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2925
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    if-nez v0, :cond_0

    .line 2926
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 2928
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2930
    :goto_0
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 2
    .param p1, "now"    # J

    .line 2913
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 2914
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getAuthToken, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 2915
    invoke-virtual {v1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authTokenType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loginOptions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notifyOnAuthFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2914
    return-object v0
.end method
