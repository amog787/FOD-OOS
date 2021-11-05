.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationHistoryManager$P36FRGiYHm0dLWXCGgnVpI1Em0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationHistoryManager;

.field public final synthetic f$1:Landroid/app/NotificationHistory$HistoricalNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationHistoryManager$P36FRGiYHm0dLWXCGgnVpI1Em0E;->f$0:Lcom/android/server/notification/NotificationHistoryManager;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationHistoryManager$P36FRGiYHm0dLWXCGgnVpI1Em0E;->f$1:Landroid/app/NotificationHistory$HistoricalNotification;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationHistoryManager$P36FRGiYHm0dLWXCGgnVpI1Em0E;->f$0:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationHistoryManager$P36FRGiYHm0dLWXCGgnVpI1Em0E;->f$1:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationHistoryManager;->lambda$addNotification$0$NotificationHistoryManager(Landroid/app/NotificationHistory$HistoricalNotification;)V

    return-void
.end method
