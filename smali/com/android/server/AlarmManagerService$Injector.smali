.class Lcom/android/server/AlarmManagerService$Injector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativeData:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 4190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4191
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4192
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 4243
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$2300(J)V

    .line 4244
    return-void
.end method

.method getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 3

    .line 4255
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4256
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "*alarm*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    return-object v1
.end method

.method getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .param p1, "service"    # Lcom/android/server/AlarmManagerService;

    .line 4266
    new-instance v0, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-object v0
.end method

.method getCurrentTimeMillis()J
    .locals 2

    .line 4251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getElapsedRealtime()J
    .locals 2

    .line 4247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getNextAlarm(I)J
    .locals 2
    .param p1, "type"    # I

    .line 4229
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$2000(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getSystemUiUid()I
    .locals 4

    .line 4260
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4261
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method init()V
    .locals 2

    .line 4195
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1700()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    .line 4196
    return-void
.end method

.method isAlarmDriverPresent()Z
    .locals 4

    .line 4203
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAlarm(IJ)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "millis"    # J

    .line 4210
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 4211
    const-wide/16 v0, 0x0

    .line 4212
    .local v0, "alarmSeconds":J
    const-wide/16 v2, 0x0

    .local v2, "alarmNanoseconds":J
    goto :goto_0

    .line 4214
    .end local v0    # "alarmSeconds":J
    .end local v2    # "alarmNanoseconds":J
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    .line 4215
    .local v2, "alarmSeconds":J
    rem-long v4, p2, v0

    mul-long/2addr v4, v0

    mul-long/2addr v0, v4

    move-wide v12, v0

    move-wide v0, v2

    move-wide v2, v12

    .line 4218
    .restart local v0    # "alarmSeconds":J
    .local v2, "alarmNanoseconds":J
    :goto_0
    move-object v11, p0

    iget-wide v4, v11, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    move v6, p1

    move-wide v7, v0

    move-wide v9, v2

    invoke-static/range {v4 .. v10}, Lcom/android/server/AlarmManagerService;->access$1900(JIJJ)I

    move-result v4

    .line 4220
    .local v4, "result":I
    if-eqz v4, :cond_1

    .line 4221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4222
    .local v5, "nowElapsed":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to set kernel alarm, now="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " @ ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "), ret = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4224
    invoke-static {v4}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4222
    const-string v9, "AlarmManager"

    invoke-static {v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4220
    .end local v5    # "nowElapsed":J
    :cond_1
    move v8, p1

    .line 4226
    :goto_1
    return-void
.end method

.method setKernelTime(J)V
    .locals 4
    .param p1, "millis"    # J

    .line 4237
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 4238
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/AlarmManagerService;->access$2200(JJ)I

    .line 4240
    :cond_0
    return-void
.end method

.method setKernelTimezone(I)V
    .locals 2
    .param p1, "minutesWest"    # I

    .line 4233
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$2100(JI)I

    .line 4234
    return-void
.end method

.method waitForAlarm()I
    .locals 2

    .line 4199
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1800(J)I

    move-result v0

    return v0
.end method
