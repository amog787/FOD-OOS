.class Lcom/android/server/notification/SnoozeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SnoozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SnoozeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SnoozeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SnoozeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/SnoozeHelper;

    .line 669
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 672
    invoke-static {}, Lcom/android/server/notification/SnoozeHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const-string v0, "SnoozeHelper"

    const-string v1, "Reposting notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    invoke-static {}, Lcom/android/server/notification/SnoozeHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    const-string/jumbo v1, "key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;IZ)V

    .line 679
    :cond_1
    return-void
.end method
