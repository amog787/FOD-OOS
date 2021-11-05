.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$pzk58E_uhN8zWEPqtMQoUZpAM4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field public final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$pzk58E_uhN8zWEPqtMQoUZpAM4k;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$pzk58E_uhN8zWEPqtMQoUZpAM4k;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$pzk58E_uhN8zWEPqtMQoUZpAM4k;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$pzk58E_uhN8zWEPqtMQoUZpAM4k;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onPanelHidden$4$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method
