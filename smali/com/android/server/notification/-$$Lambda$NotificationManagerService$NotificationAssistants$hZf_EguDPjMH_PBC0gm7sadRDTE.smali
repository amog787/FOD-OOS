.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/service/notification/INotificationListener;

    check-cast p2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantSnoozedLocked$8$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method
