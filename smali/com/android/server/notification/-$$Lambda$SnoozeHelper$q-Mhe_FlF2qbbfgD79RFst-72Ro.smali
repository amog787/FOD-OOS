.class public final synthetic Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/SnoozeHelper;

.field public final synthetic f$1:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;->f$0:Lcom/android/server/notification/SnoozeHelper;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;->f$1:Lcom/android/server/notification/NotificationRecord;

    iput p3, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;->f$0:Lcom/android/server/notification/SnoozeHelper;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;->f$1:Lcom/android/server/notification/NotificationRecord;

    iget v2, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/SnoozeHelper;->lambda$repostGroupSummary$0$SnoozeHelper(Lcom/android/server/notification/NotificationRecord;I)V

    return-void
.end method
