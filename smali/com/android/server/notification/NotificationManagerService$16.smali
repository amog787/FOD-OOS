.class Lcom/android/server/notification/NotificationManagerService$16;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$r:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 8527
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$r:Lcom/android/server/notification/NotificationRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8530
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$10700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/GroupHelper;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 8531
    return-void
.end method
