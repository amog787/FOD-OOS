.class Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$reason:I

.field final synthetic val$sbnLight:Landroid/service/notification/StatusBarNotification;

.field final synthetic val$stats:Landroid/service/notification/NotificationStats;

.field final synthetic val$update:Landroid/service/notification/NotificationRankingUpdate;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 9066
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$sbnLight:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$update:Landroid/service/notification/NotificationRankingUpdate;

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$stats:Landroid/service/notification/NotificationStats;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 9069
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$sbnLight:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$update:Landroid/service/notification/NotificationRankingUpdate;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$stats:Landroid/service/notification/NotificationStats;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;->val$reason:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->access$11100(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    .line 9070
    return-void
.end method
