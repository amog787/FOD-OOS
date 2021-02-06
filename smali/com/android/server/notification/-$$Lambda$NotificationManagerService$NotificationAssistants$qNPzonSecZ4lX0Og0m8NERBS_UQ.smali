.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field public final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onPanelRevealed$3$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method
