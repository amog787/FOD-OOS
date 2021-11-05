.class final Lcom/android/server/AlarmManagerService$InFlight;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InFlight"
.end annotation


# instance fields
.field final mAlarmType:I

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mCreatorUid:I

.field final mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

.field final mListener:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mTag:Ljava/lang/String;

.field final mUid:I

.field final mWhenElapsed:J

.field final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;J)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/AlarmManagerService;
    .param p2, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p3, "nowELAPSED"    # J

    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1446
    iput-wide p3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWhenElapsed:J

    .line 1447
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    .line 1448
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 1449
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    .line 1450
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mCreatorUid:I

    .line 1451
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 1452
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 1453
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {p1, v0}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    goto :goto_1

    .line 1454
    :cond_1
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1455
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1456
    .local v0, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v0, :cond_2

    .line 1457
    new-instance v1, Lcom/android/server/AlarmManagerService$FilterStats;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    move-object v0, v1

    .line 1458
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    :cond_2
    iput-wide p3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    .line 1461
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1462
    iget v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iput v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    .line 1463
    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1485
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1487
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1488
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1489
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWhenElapsed:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1490
    iget v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1491
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 1492
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1494
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    if-eqz v2, :cond_1

    .line 1495
    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1497
    :cond_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    if-eqz v2, :cond_2

    .line 1498
    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1500
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_3

    .line 1501
    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/WorkSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1504
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1505
    return-void
.end method

.method isBroadcast()Z
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InFlight{pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWhenElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creatorUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mCreatorUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alarmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
