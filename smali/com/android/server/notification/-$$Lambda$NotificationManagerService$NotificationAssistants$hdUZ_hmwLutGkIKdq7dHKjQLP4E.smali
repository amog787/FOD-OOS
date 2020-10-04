.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field private final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;->f$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onNotificationsSeenLocked$2$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    return-void
.end method
