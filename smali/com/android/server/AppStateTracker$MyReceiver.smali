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

    .line 678
    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AppStateTracker;
    .param p2, "x1"    # Lcom/android/server/AppStateTracker$1;

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$MyReceiver;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 681
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 683
    .local v0, "userId":I
    if-lez v0, :cond_2

    .line 684
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->doUserRemoved(I)V

    goto :goto_0

    .line 686
    .end local v0    # "userId":I
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    const-string/jumbo v2, "plugged"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, v1, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    .line 689
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    goto :goto_1

    .line 689
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 686
    :cond_2
    :goto_0
    nop

    .line 692
    :goto_1
    return-void
.end method
