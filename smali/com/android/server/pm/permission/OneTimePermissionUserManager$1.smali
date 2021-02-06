.class Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OneTimePermissionUserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/OneTimePermissionUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 56
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$000(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 62
    .local v1, "listener":Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
    if-eqz v1, :cond_0

    .line 66
    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->access$100(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    .line 67
    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$000(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 70
    .end local v0    # "uid":I
    .end local v1    # "listener":Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
    :cond_0
    return-void
.end method
