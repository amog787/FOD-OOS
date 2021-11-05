.class final Lcom/android/server/AppStateTracker$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AppStateTracker;
    .param p2, "x1"    # Lcom/android/server/AppStateTracker$1;

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$MyReceiver;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 682
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 683
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 684
    .local v0, "userId":I
    if-lez v0, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->doUserRemoved(I)V

    .line 687
    .end local v0    # "userId":I
    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, v1, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    .line 690
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 692
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 693
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 694
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 695
    .restart local v0    # "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 697
    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AppStateTracker$MyHandler;->notifyExemptChanged()V

    .line 700
    .end local v0    # "userId":I
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method
