.class public final Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdlenessTracker.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.DeviceIdlenessTracker"


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mDockIdle:Z

.field private mIdle:Z

.field private mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

.field private mIdleWindowSlop:J

.field private mInCarMode:Z

.field private mInactivityIdleThreshold:J

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 41
    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/job/controllers/idle/-$$Lambda$DeviceIdlenessTracker$-H1-ZwZAJ-vh10A0PeYXaZLj_R0;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/-$$Lambda$DeviceIdlenessTracker$-H1-ZwZAJ-vh10A0PeYXaZLj_R0;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInCarMode:Z

    .line 67
    return-void
.end method

.method private cancelIdlenessCheck()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 221
    return-void
.end method

.method private handleIdleTrigger()V
    .locals 4

    .line 225
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInCarMode:Z

    if-nez v0, :cond_2

    .line 226
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle trigger fired @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 230
    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_0

    .line 232
    :cond_2
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " car="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInCarMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_3
    :goto_0
    return-void
.end method

.method private maybeScheduleIdlenessCheck(Ljava/lang/String;)V
    .locals 13
    .param p1, "reason"    # Ljava/lang/String;

    .line 208
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInCarMode:Z

    if-nez v0, :cond_2

    .line 209
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 210
    .local v0, "nowElapsed":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    add-long/2addr v2, v0

    .line 211
    .local v2, "when":J
    sget-boolean v4, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling idle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " now:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " when="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.DeviceIdlenessTracker"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-wide v8, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    iget-object v11, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v12, 0x0

    const-string v10, "JS idleness"

    move-wide v6, v2

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 217
    .end local v0    # "nowElapsed":J
    .end local v2    # "when":J
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 119
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 120
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 123
    .local v2, "diToken":J
    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 125
    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    const-wide v5, 0x10800000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 128
    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    const-wide v5, 0x10800000003L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 131
    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInCarMode:Z

    const-wide v5, 0x10800000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 135
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 137
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 110
    const-string v0, "  mIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    const-string v0, "  mScreenOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 112
    const-string v0, "  mDockIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 113
    const-string v0, "  mInCarMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInCarMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 115
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    return v0
.end method

.method public synthetic lambda$new$0$DeviceIdlenessTracker()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    .line 58
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    const-string v2, "JobScheduler.DeviceIdlenessTracker"

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "android.intent.action.DOCK_IDLE"

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_1
    const-string v3, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_2
    const-string v3, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v3, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v3, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x3

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 202
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    goto :goto_2

    .line 198
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInCarMode:Z

    .line 199
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    .line 200
    goto :goto_2

    .line 190
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInCarMode:Z

    .line 191
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->cancelIdlenessCheck()V

    .line 192
    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    if-eqz v1, :cond_7

    .line 193
    iput-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 194
    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v1, v6}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_2

    .line 176
    :pswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez v1, :cond_2

    .line 179
    return-void

    .line 181
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    goto :goto_1

    .line 184
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 185
    iput-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 187
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    .line 188
    goto :goto_2

    .line 147
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez v1, :cond_4

    .line 149
    return-void

    .line 153
    :cond_4
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 155
    return-void

    .line 159
    :cond_5
    :pswitch_6
    iput-boolean v5, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 160
    iput-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 161
    sget-boolean v1, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 162
    const-string v1, "exiting idle"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_6
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->cancelIdlenessCheck()V

    .line 165
    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    if-eqz v1, :cond_7

    .line 166
    iput-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 167
    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v1, v6}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    .line 205
    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_8
        -0x66d7cdf7 -> :sswitch_7
        -0x56ac2893 -> :sswitch_6
        -0x35f53cc5 -> :sswitch_5
        0xe98bfe6 -> :sswitch_4
        0xf5d1132 -> :sswitch_3
        0x378aca07 -> :sswitch_2
        0x56d17cc5 -> :sswitch_1
        0x64b5c0ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 76
    iput-object p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    .line 81
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 82
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mPowerManager:Landroid/os/PowerManager;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method
