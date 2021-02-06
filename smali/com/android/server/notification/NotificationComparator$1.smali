.class Lcom/android/server/notification/NotificationComparator$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationComparator;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationComparator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationComparator;

    .line 198
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator$1;->this$0:Lcom/android/server/notification/NotificationComparator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator$1;->this$0:Lcom/android/server/notification/NotificationComparator;

    .line 202
    const-string v1, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationComparator;->access$002(Lcom/android/server/notification/NotificationComparator;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    return-void
.end method
