.class Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountsByTypeAndFeatureSession"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallingUid:I

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field private final mIncludeManagedNotVisible:Z

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "features"    # [Ljava/lang/String;
    .param p6, "callingUid"    # I
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "includeManagedNotVisible"    # Z

    .line 4124
    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4125
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 4110
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 4111
    iput-object v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 4112
    const/4 v0, 0x0

    iput v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 4128
    move/from16 v0, p6

    iput v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    .line 4129
    move-object v1, p5

    iput-object v1, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 4130
    move-object/from16 v2, p7

    iput-object v2, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mPackageName:Ljava/lang/String;

    .line 4131
    move/from16 v3, p8

    iput-boolean v3, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mIncludeManagedNotVisible:Z

    .line 4132
    return-void
.end method


# virtual methods
.method public checkAccount()V
    .locals 4

    .line 4146
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 4147
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->sendResult()V

    .line 4148
    return-void

    .line 4151
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4152
    .local v0, "accountAuthenticator":Landroid/accounts/IAccountAuthenticator;
    if-nez v0, :cond_2

    .line 4157
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4159
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->toDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4158
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    :cond_1
    return-void

    .line 4164
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4167
    goto :goto_0

    .line 4165
    :catch_0
    move-exception v1

    .line 4166
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    const-string/jumbo v3, "remote exception"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    .line 4168
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Bundle;

    .line 4172
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4173
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    .line 4174
    if-nez p1, :cond_0

    .line 4175
    const/4 v0, 0x5

    const-string/jumbo v1, "null bundle"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    .line 4176
    return-void

    .line 4178
    :cond_0
    const/4 v1, 0x0

    const-string v2, "booleanResult"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4179
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4181
    :cond_1
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 4182
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 4183
    return-void
.end method

.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4136
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountType:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mPackageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mIncludeManagedNotVisible:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 4139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 4140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 4142
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 4143
    return-void
.end method

.method public sendResult()V
    .locals 6

    .line 4186
    const-string v0, "AccountManagerService"

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 4187
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_2

    .line 4189
    const/4 v2, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/accounts/Account;

    .line 4190
    .local v3, "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 4191
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    aput-object v5, v3, v4

    .line 4190
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4193
    .end local v4    # "i":I
    :cond_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " calling onResult() on response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4198
    .local v4, "result":Landroid/os/Bundle;
    const-string v5, "accounts"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4199
    invoke-interface {v1, v4}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4205
    .end local v3    # "accounts":[Landroid/accounts/Account;
    .end local v4    # "result":Landroid/os/Bundle;
    goto :goto_1

    .line 4200
    :catch_0
    move-exception v3

    .line 4202
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4203
    const-string v2, "failure while notifying response"

    invoke-static {v0, v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4207
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    .line 4211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getAccountsByTypeAndFeatures, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4211
    return-object v0
.end method
