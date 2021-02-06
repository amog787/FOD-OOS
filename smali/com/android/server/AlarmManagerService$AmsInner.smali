.class public final Lcom/android/server/AlarmManagerService$AmsInner;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AmsInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 686
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanUpPendingWhileIdleAlarmsLocked()V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 720
    return-void
.end method

.method public convertToElapsedInner(JI)J
    .locals 2
    .param p1, "when"    # J
    .param p3, "type"    # I

    .line 700
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public deliverAlarmsLockedInner(Ljava/util/ArrayList;J)V
    .locals 2
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 709
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 711
    monitor-exit v0

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAlarmHandler()Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method public getAppStateTracker()Lcom/android/server/AppStateTracker;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v0

    return-object v0
.end method

.method public getLabelForType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 697
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$100(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTriggerTime(JJJ)J
    .locals 2
    .param p1, "now"    # J
    .param p3, "triggerAtTime"    # J
    .param p5, "interval"    # J

    .line 694
    invoke-static/range {p1 .. p6}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public reAddAlarmLockedInner(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 1
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .line 715
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 716
    return-void
.end method

.method public removeLockedInner(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    .line 703
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 704
    return-void
.end method

.method public setImplLockedInner(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 1
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .line 706
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AmsInner;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 707
    return-void
.end method
