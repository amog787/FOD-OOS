.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;
.super Landroid/os/Handler;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1138
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1142
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1143
    .local v1, "nowMs":J
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationSQLiteLog"

    invoke-static {v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1154
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1155
    goto :goto_0

    .line 1151
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1152
    goto :goto_0

    .line 1148
    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1149
    goto :goto_0

    .line 1145
    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    invoke-static {v3, v5, v6, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1146
    nop

    .line 1160
    :goto_0
    return-void
.end method
