.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/os/UserHandle;

.field private final synthetic f$4:Landroid/app/NotificationChannel;

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$3:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$4:Landroid/app/NotificationChannel;

    iput p6, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$3:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$4:Landroid/app/NotificationChannel;

    iget v5, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyNotificationChannelChanged$2$NotificationManagerService$NotificationListeners(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method
