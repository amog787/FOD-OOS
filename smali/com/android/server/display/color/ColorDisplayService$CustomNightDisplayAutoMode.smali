.class final Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;
.super Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomNightDisplayAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Ljava/time/LocalTime;

.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private mStartTime:Ljava/time/LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 2

    .line 1072
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V

    .line 1073
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1074
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;-><init>(Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1080
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    .line 1061
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    return-void
.end method

.method private updateActivated()V
    .locals 6

    .line 1083
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1084
    .local v0, "now":Ljava/time/LocalDateTime;
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1085
    .local v1, "start":Ljava/time/LocalDateTime;
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v2, v1}, Lcom/android/server/display/color/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1086
    .local v2, "end":Ljava/time/LocalDateTime;
    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v3

    .line 1088
    .local v3, "activate":Z
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    if-eqz v4, :cond_1

    .line 1090
    invoke-virtual {v4, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1091
    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1092
    invoke-virtual {v4, v2}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1093
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v3

    .line 1097
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1098
    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v4

    if-eq v4, v3, :cond_3

    .line 1099
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1102
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 1103
    return-void
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 11
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/time/LocalDateTime;

    .line 1106
    if-eqz p1, :cond_1

    .line 1107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/display/color/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/display/color/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    nop

    .line 1109
    .local v0, "next":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 1110
    .local v9, "millis":J
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const/4 v8, 0x0

    const-string v6, "ColorDisplayService"

    move-wide v4, v9

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1112
    .end local v0    # "next":Ljava/time/LocalDateTime;
    .end local v9    # "millis":J
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .line 1139
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 1141
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .line 1159
    const-string v0, "ColorDisplayService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    .line 1161
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 1152
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 1153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1154
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    .line 1155
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 1145
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 1146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1147
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    .line 1148
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1116
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1120
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 1121
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 1123
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1126
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    .line 1127
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1135
    return-void
.end method
