.class Lcom/android/server/accounts/AccountManagerService$4;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 352
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 356
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 357
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 358
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->access$600(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3, v1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 360
    .local v2, "mode":I
    if-nez v2, :cond_0

    .line 361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v6, 0x1

    invoke-static {v5, p2, v1, v6}, Lcom/android/server/accounts/AccountManagerService;->access$700(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    goto :goto_0

    .line 365
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    nop

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService$4;
    .end local p1    # "op":I
    .end local p2    # "packageName":Ljava/lang/String;
    throw v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 370
    .end local v0    # "userId":I
    .end local v1    # "uid":I
    .end local v2    # "mode":I
    .end local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService$4;
    .restart local p1    # "op":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    goto :goto_1

    .line 368
    :catch_0
    move-exception v0

    .line 371
    :goto_1
    return-void
.end method
