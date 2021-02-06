.class public Lcom/android/server/OpAlarmAlignmentInjector;
.super Ljava/lang/Object;
.source "OpAlarmAlignmentInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpAlarmAlignmentInjector"

.field private static opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const-string v0, "OpAlarmAlignmentInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput v2, v0, v1

    .line 37
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deliverDelayAlarm(Landroid/os/Message;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .line 97
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.deliverDelayAlarm()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    .line 104
    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmAlignment;->deliverDelayAlarm(Landroid/os/Message;)V

    .line 106
    :cond_2
    return-void
.end method

.method public static initAlarmAlignment(II)V
    .locals 2
    .param p0, "phase"    # I
    .param p1, "phaseBootCompleted"    # I

    .line 73
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.initAlarmAlignment()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmAlignment;->initAlarmAlignment(II)V

    .line 82
    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/AlarmManagerService$AmsInner;Landroid/content/Context;)V
    .locals 2
    .param p0, "amsInner"    # Lcom/android/server/AlarmManagerService$AmsInner;
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-nez v0, :cond_2

    .line 47
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_alignment:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 48
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmAlignment;

    sput-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    .line 50
    :cond_2
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_3

    .line 51
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmAlignment;->initInstance(Lcom/android/server/AlarmManagerService$AmsInner;Landroid/content/Context;)V

    .line 54
    :cond_3
    return-void
.end method

.method public static setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z
    .locals 10
    .param p0, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p1, "reason"    # Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J

    .line 59
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "OpAlarmAlignmentInjector"

    const-string v2, "call AlarmAlignmentInjector.setAlarmAlignment()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    sget-object v3, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v3, :cond_2

    .line 66
    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/server/IOpAlarmAlignment;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    move-result v0

    return v0

    .line 69
    :cond_2
    return v1
.end method

.method public static setBlackAlarm(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p0, "mBlackAlarm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.setBlackAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    .line 142
    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmAlignment;->setBlackAlarm(Ljava/util/List;)V

    .line 144
    :cond_2
    return-void
.end method

.method public static setBlockAlarmUid(Ljava/lang/String;ZI)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "isFrozeen"    # Z
    .param p2, "level"    # I

    .line 123
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.setBlockAlarmUid()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpAlarmAlignment;->setBlockAlarmUid(Ljava/lang/String;ZI)V

    .line 132
    :cond_2
    return-void
.end method

.method public static shellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 109
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "OpAlarmAlignmentInjector"

    const-string v2, "call AlarmAlignmentInjector.dump()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmAlignment;->shellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 119
    :cond_2
    return v1
.end method

.method public static updateInteractiveStartTime(J)V
    .locals 2
    .param p0, "time"    # J

    .line 85
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.updateInteractiveStartTime()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmAlignment;->updateInteractiveStartTime(J)V

    .line 94
    :cond_2
    return-void
.end method
