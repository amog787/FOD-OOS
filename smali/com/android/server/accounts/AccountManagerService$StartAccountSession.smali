.class abstract Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StartAccountSession"
.end annotation


# instance fields
.field private final mIsPasswordForwardingAllowed:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 11
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "accountName"    # Ljava/lang/String;
    .param p7, "authDetailsRequired"    # Z
    .param p8, "updateLastAuthenticationTime"    # Z
    .param p9, "isPasswordForwardingAllowed"    # Z

    .line 3404
    move-object v10, p0

    move-object v1, p1

    iput-object v1, v10, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3405
    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 3408
    move/from16 v0, p9

    iput-boolean v0, v10, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    .line 3409
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "result"    # Landroid/os/Bundle;

    .line 3413
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3414
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mNumResults:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mNumResults:I

    .line 3415
    const/4 v0, 0x0

    .line 3416
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent"

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    .line 3417
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v0, v3

    if-eqz v3, :cond_0

    .line 3418
    nop

    .line 3419
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3418
    invoke-virtual {p0, v3, v0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3421
    const-string/jumbo v1, "invalid intent in bundle returned"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->onError(ILjava/lang/String;)V

    .line 3423
    return-void

    .line 3427
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mExpectActivityLaunch:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 3428
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3429
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    goto :goto_0

    .line 3431
    .end local v1    # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 3433
    .restart local v1    # "response":Landroid/accounts/IAccountManagerResponse;
    :goto_0
    if-nez v1, :cond_2

    .line 3434
    return-void

    .line 3436
    :cond_2
    const/4 v3, 0x2

    const-string v4, "AccountManagerService"

    if-nez p1, :cond_4

    .line 3437
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " calling onError() on response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_3
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string/jumbo v4, "null bundle returned"

    invoke-static {v3, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3443
    return-void

    .line 3446
    :cond_4
    const/4 v5, -0x1

    const-string v6, "errorCode"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_5

    if-nez v0, :cond_5

    .line 3449
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3450
    const-string v4, "errorMessage"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3449
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3451
    return-void

    .line 3455
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    if-nez v5, :cond_6

    .line 3456
    const-string/jumbo v5, "password"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3460
    :cond_6
    const-string v5, "authtoken"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3462
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3464
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " calling onResult() on response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3463
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    :cond_7
    const-string v3, "accountSessionBundle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 3472
    .local v5, "sessionBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_b

    .line 3473
    const-string v6, "accountType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3474
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mAccountType:Ljava/lang/String;

    .line 3475
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 3476
    :cond_8
    const-string v8, "Account type in session bundle doesn\'t match request."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_9
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mAccountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v6

    .line 3485
    .local v6, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    invoke-virtual {v6, v5}, Lcom/android/server/accounts/CryptoHelper;->encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 3486
    .local v8, "encryptedBundle":Landroid/os/Bundle;
    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3494
    .end local v6    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    .end local v8    # "encryptedBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 3487
    :catch_0
    move-exception v3

    .line 3488
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3489
    const-string v6, "Failed to encrypt session bundle!"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3491
    :cond_a
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string v6, "failed to encrypt session bundle"

    invoke-static {v4, v1, v2, v6}, Lcom/android/server/accounts/AccountManagerService;->access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3493
    return-void

    .line 3497
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .end local v7    # "accountType":Ljava/lang/String;
    :cond_b
    :goto_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 3498
    return-void
.end method
