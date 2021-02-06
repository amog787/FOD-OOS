.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;->f$3:Z

    move-object v4, p1

    check-cast v4, Landroid/service/notification/INotificationListener;

    move-object v5, p2

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantExpansionChangedLocked$7$NotificationManagerService$NotificationAssistants(Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method
