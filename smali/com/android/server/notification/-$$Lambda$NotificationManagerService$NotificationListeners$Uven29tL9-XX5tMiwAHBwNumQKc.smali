.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-boolean p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-boolean v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$onStatusBarIconsBehaviorChanged$0$NotificationManagerService$NotificationListeners(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    return-void
.end method
