.class Lcom/android/server/accounts/AccountManagerService$19;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 4572
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$19;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$response:Landroid/accounts/IAccountManagerResponse;

    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$opPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4589
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "value"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4575
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 4577
    .local v0, "parcelables":[Landroid/os/Parcelable;
    array-length v1, v0

    new-array v1, v1, [Landroid/accounts/Account;

    .line 4578
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 4579
    aget-object v3, v0, v2

    check-cast v3, Landroid/accounts/Account;

    aput-object v3, v1, v2

    .line 4578
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4581
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$19;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$response:Landroid/accounts/IAccountManagerResponse;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$opPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->access$2700(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 4583
    return-void
.end method
