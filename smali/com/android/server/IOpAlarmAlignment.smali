.class public interface abstract Lcom/android/server/IOpAlarmAlignment;
.super Ljava/lang/Object;
.source "IOpAlarmAlignment.java"


# virtual methods
.method public abstract deliverDelayAlarm(Landroid/os/Message;)V
.end method

.method public abstract initAlarmAlignment(II)V
.end method

.method public abstract initInstance(Lcom/android/server/AlarmManagerService$AmsInner;Landroid/content/Context;)V
.end method

.method public abstract setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z
.end method

.method public abstract setBlackAlarm(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBlockAlarmUid(Ljava/lang/String;ZI)V
.end method

.method public abstract shellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
.end method

.method public abstract updateInteractiveStartTime(J)V
.end method
