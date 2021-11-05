.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;->f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

    iput-object p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;->f$1:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;->f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

    iget-object v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;->f$1:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/people/data/DataManager$NotificationListener;->lambda$onNotificationRemoved$1$DataManager$NotificationListener(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method
