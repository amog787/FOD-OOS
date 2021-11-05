.class Lcom/android/server/notification/ScheduleConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ScheduleConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ScheduleConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ScheduleConditionProvider;

    .line 330
    iput-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 333
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.SCP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {v0}, Lcom/android/server/notification/ScheduleConditionProvider;->access$000(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/ScheduleConditionProvider;->access$000(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 337
    .local v2, "conditionId":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {v3}, Lcom/android/server/notification/ScheduleConditionProvider;->access$000(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ScheduleCalendar;

    .line 338
    .local v3, "cal":Landroid/service/notification/ScheduleCalendar;
    if-eqz v3, :cond_1

    .line 339
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 341
    .end local v2    # "conditionId":Landroid/net/Uri;
    .end local v3    # "cal":Landroid/service/notification/ScheduleCalendar;
    :cond_1
    goto :goto_0

    .line 342
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 344
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {v0}, Lcom/android/server/notification/ScheduleConditionProvider;->access$100(Lcom/android/server/notification/ScheduleConditionProvider;)V

    .line 345
    return-void
.end method
