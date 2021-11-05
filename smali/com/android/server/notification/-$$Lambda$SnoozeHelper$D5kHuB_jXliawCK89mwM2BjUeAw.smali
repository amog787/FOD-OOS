.class public final synthetic Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/SnoozeHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;->f$0:Lcom/android/server/notification/SnoozeHelper;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;->f$2:Lcom/android/server/notification/NotificationRecord;

    iput p4, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;->f$0:Lcom/android/server/notification/SnoozeHelper;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;->f$2:Lcom/android/server/notification/NotificationRecord;

    iget v3, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->lambda$clearData$1$SnoozeHelper(Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;I)V

    return-void
.end method
