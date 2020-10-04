.class Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Alarm"
.end annotation


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public expectedMaxWhenElapsed:J

.field public expectedWhenElapsed:J

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public maxWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

.field public repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public when:J

.field public whenElapsed:J

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 16
    .param p1, "_type"    # I
    .param p2, "_when"    # J
    .param p4, "_whenElapsed"    # J
    .param p6, "_windowLength"    # J
    .param p8, "_maxWhen"    # J
    .param p10, "_interval"    # J
    .param p12, "_op"    # Landroid/app/PendingIntent;
    .param p13, "_rec"    # Landroid/app/IAlarmListener;
    .param p14, "_listenerTag"    # Ljava/lang/String;
    .param p15, "_ws"    # Landroid/os/WorkSource;
    .param p16, "_flags"    # I
    .param p17, "_info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p18, "_uid"    # I
    .param p19, "_pkgName"    # Ljava/lang/String;

    .line 3937
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p12

    move-object/from16 v7, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3938
    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 3939
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 3940
    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    .line 3942
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3943
    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 3944
    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 3945
    move-wide/from16 v8, p6

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 3946
    invoke-static/range {p8 .. p9}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 3947
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 3948
    iput-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 3949
    move-object/from16 v12, p13

    iput-object v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    .line 3950
    iput-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    .line 3951
    invoke-static {v6, v7, v1}, Lcom/android/server/AlarmManagerService$Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 3952
    move-object/from16 v13, p15

    iput-object v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 3953
    move/from16 v14, p16

    iput v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 3954
    move-object/from16 v15, p17

    iput-object v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3955
    move/from16 v1, p18

    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 3956
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 3957
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 3958
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    goto :goto_3

    :cond_3
    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    :goto_3
    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3959
    return-void
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 3962
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3963
    :cond_0
    const-string v0, "*alarm*:"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "*walarm*:"

    .line 3964
    .local v0, "alarmString":Ljava/lang/String;
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 4002
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move v0, v1

    .line 4003
    .local v0, "isRtc":Z
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "tag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4004
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4005
    const-string v1, " expectedWhenElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4007
    const-string v1, " expectedMaxWhenElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4009
    const-string v1, " whenElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4011
    const-string v1, " maxWhenElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4013
    const-string v1, " when="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4014
    if-eqz v0, :cond_2

    .line 4015
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 4017
    :cond_2
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4019
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4020
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "window="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4021
    const-string v1, " repeatInterval="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4022
    const-string v1, " count="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4023
    const-string v1, " flags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4024
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_3

    .line 4025
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Alarm clock:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  triggerTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4027
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4028
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  showIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4030
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "operation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4031
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v1, :cond_4

    .line 4032
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "listener="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4034
    :cond_4
    return-void
.end method

.method public makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;
    .locals 4
    .param p1, "nowRTC"    # J

    .line 3968
    new-instance v0, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3969
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 3970
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3971
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<listener>:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    .line 3968
    return-object v0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;

    .line 3976
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3977
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3978
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3976
    :goto_0
    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3982
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3987
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3988
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3990
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3992
    const-string v1, " when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3994
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3995
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3996
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "nowElapsed"    # J
    .param p6, "nowRTC"    # J

    .line 4038
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4040
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4041
    iget v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4042
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v2, p4

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4043
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4044
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4045
    iget v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4046
    iget v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4047
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_0

    .line 4048
    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4050
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 4051
    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4053
    :cond_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v2, :cond_2

    .line 4054
    const-wide v3, 0x1090000000aL

    invoke-interface {v2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4057
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4058
    return-void
.end method
