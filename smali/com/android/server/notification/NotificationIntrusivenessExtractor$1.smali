.class Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "NotificationIntrusivenessExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationIntrusivenessExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationIntrusivenessExtractor;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationIntrusivenessExtractor;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .line 67
    iput-object p1, p0, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;->this$0:Lcom/android/server/notification/NotificationIntrusivenessExtractor;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLastIntrusive()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public work()V
    .locals 0

    .line 71
    return-void
.end method
