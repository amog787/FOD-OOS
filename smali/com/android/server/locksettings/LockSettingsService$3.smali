.class Lcom/android/server/locksettings/LockSettingsService$3;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 866
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 872
    .local v0, "userHandle":I
    if-lez v0, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    .line 875
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 876
    .local v1, "ks":Landroid/security/KeyStore;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 877
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 878
    .local v3, "parentHandle":I
    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 879
    .end local v0    # "userHandle":I
    .end local v1    # "ks":Landroid/security/KeyStore;
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "parentHandle":I
    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 880
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 881
    .restart local v0    # "userHandle":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .end local v0    # "userHandle":I
    goto :goto_1

    .line 882
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 883
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 884
    .restart local v0    # "userHandle":I
    if-lez v0, :cond_5

    .line 885
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    goto :goto_2

    .line 882
    .end local v0    # "userHandle":I
    :cond_4
    :goto_1
    nop

    .line 888
    :cond_5
    :goto_2
    return-void
.end method
