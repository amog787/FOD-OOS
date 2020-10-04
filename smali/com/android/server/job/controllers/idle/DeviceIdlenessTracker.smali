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

.field private mInactivityIdleThreshold:J

.field private mScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 37
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

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    new-instance v0, Lcom/android/server/job/controllers/idle/-$$Lambda$DeviceIdlenessTracker$-H1-ZwZAJ-vh10A0PeYXaZLj_R0;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/-$$Lambda$DeviceIdlenessTracker$-H1-ZwZAJ-vh10A0PeYXaZLj_R0;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 60
    return-void
.end method

.method private handleIdleTrigger()V
    .locals 4

    .line 162
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_2

    .line 163
    :cond_0
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 164
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

    .line 166
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 167
    iget-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-interface {v0, v1}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_0

    .line 169
    :cond_2
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 170
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 98
    const-string v0, "  mIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    const-string v0, "  mScreenOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 100
    const-string v0, "  mDockIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    return v0
.end method

.method public synthetic lambda$new$0$DeviceIdlenessTracker()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    .line 52
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 105
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "JobScheduler.DeviceIdlenessTracker"

    const/4 v4, 0x1

    const-string v5, "android.intent.action.DOCK_ACTIVE"

    const/4 v6, 0x0

    if-nez v2, :cond_7

    .line 107
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 130
    :cond_0
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "android.intent.action.DOCK_IDLE"

    if-nez v2, :cond_3

    .line 131
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    const-string v2, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    goto/16 :goto_5

    .line 155
    :cond_2
    :goto_0
    goto/16 :goto_5

    .line 136
    :cond_3
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 137
    iget-boolean v2, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez v2, :cond_4

    .line 139
    return-void

    .line 141
    :cond_4
    iput-boolean v4, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    goto :goto_2

    .line 144
    :cond_5
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 145
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 147
    :goto_2
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 148
    .local v4, "nowElapsed":J
    iget-wide v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    add-long/2addr v6, v4

    .line 149
    .local v6, "when":J
    sget-boolean v2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduling idle : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " now:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " when="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_6
    iget-object v8, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v9, 0x2

    iget-wide v12, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    iget-object v15, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/16 v16, 0x0

    const-string v14, "JS idleness"

    move-wide v10, v6

    invoke-virtual/range {v8 .. v16}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .end local v4    # "nowElapsed":J
    .end local v6    # "when":J
    goto :goto_0

    .line 109
    :cond_7
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 110
    iget-boolean v2, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez v2, :cond_8

    .line 112
    return-void

    .line 114
    :cond_8
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    goto :goto_4

    .line 117
    :cond_9
    iput-boolean v4, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 118
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 120
    :goto_4
    sget-boolean v2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exiting idle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_a
    iget-object v2, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v3, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 125
    iget-boolean v2, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    if-eqz v2, :cond_b

    .line 127
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 128
    iget-object v2, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    iget-boolean v3, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-interface {v2, v3}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    .line 158
    :cond_b
    :goto_5
    return-void
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 69
    iput-object p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    .line 74
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method
