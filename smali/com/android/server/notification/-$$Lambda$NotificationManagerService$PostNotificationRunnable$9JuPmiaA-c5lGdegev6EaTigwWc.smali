.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

.field public final synthetic f$1:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic f$2:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;->f$0:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;->f$1:Lcom/android/server/notification/NotificationRecord;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;->f$2:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;->f$0:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;->f$1:Lcom/android/server/notification/NotificationRecord;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;->f$2:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->lambda$run$0$NotificationManagerService$PostNotificationRunnable(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
