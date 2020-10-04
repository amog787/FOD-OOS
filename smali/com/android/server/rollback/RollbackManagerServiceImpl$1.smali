.class Lcom/android/server/rollback/RollbackManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 177
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$RollbackManagerServiceImpl$1(ILjava/io/File;[III)V
    .locals 6
    .param p1, "installFlags"    # I
    .param p2, "newPackageCodePath"    # Ljava/io/File;
    .param p3, "installedUsers"    # [I
    .param p4, "user"    # I
    .param p5, "token"    # I

    .line 193
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$200(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/io/File;[III)Z

    move-result v0

    .line 195
    .local v0, "success":Z
    const/4 v1, 0x1

    .line 196
    .local v1, "ret":I
    if-nez v0, :cond_0

    .line 197
    const/4 v1, -0x1

    .line 200
    :cond_0
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 202
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v2, p5, v1}, Landroid/content/pm/PackageManagerInternal;->setEnableRollbackCode(II)V

    .line 203
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, "token":I
    const/4 v1, 0x0

    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_INSTALL_FLAGS"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 185
    .local v9, "installFlags":I
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_INSTALLED_USERS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    .line 187
    .local v10, "installedUsers":[I
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_USER"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 190
    .local v1, "user":I
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v5, "newPackageCodePath":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;

    move-object v2, v12

    move-object v3, p0

    move v4, v9

    move-object v6, v10

    move v7, v1

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;ILjava/io/File;[III)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->abortBroadcast()V

    .line 210
    .end local v0    # "token":I
    .end local v1    # "user":I
    .end local v5    # "newPackageCodePath":Ljava/io/File;
    .end local v9    # "installFlags":I
    .end local v10    # "installedUsers":[I
    :cond_0
    return-void
.end method
