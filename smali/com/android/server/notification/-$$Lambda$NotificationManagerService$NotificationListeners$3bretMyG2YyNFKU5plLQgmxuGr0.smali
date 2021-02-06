.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$3bretMyG2YyNFKU5plLQgmxuGr0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final synthetic f$1:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$3bretMyG2YyNFKU5plLQgmxuGr0;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$3bretMyG2YyNFKU5plLQgmxuGr0;->f$1:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$3bretMyG2YyNFKU5plLQgmxuGr0;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$3bretMyG2YyNFKU5plLQgmxuGr0;->f$1:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyRemovedLocked$1$NotificationManagerService$NotificationListeners(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method
