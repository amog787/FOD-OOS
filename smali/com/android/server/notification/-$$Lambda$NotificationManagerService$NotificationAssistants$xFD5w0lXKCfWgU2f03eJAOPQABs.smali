.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;ZLcom/android/server/notification/NotificationRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-boolean p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;->f$1:Z

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;->f$2:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-boolean v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;->f$1:Z

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;->f$2:Lcom/android/server/notification/NotificationRecord;

    check-cast p1, Landroid/service/notification/INotificationListener;

    check-cast p2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onNotificationEnqueuedLocked$3$NotificationManagerService$NotificationAssistants(ZLcom/android/server/notification/NotificationRecord;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method
