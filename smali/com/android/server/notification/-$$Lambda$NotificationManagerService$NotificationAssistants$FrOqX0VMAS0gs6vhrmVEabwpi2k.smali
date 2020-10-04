.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/function/BiConsumer;

.field private final synthetic f$1:Landroid/service/notification/INotificationListener;

.field private final synthetic f$2:Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;->f$1:Landroid/service/notification/INotificationListener;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;->f$2:Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;->f$1:Landroid/service/notification/INotificationListener;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;->f$2:Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantLocked$9(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method
