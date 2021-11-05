.class public Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Vibration"
.end annotation


# instance fields
.field public final attrs:Landroid/os/VibrationAttributes;

.field public effect:Landroid/os/VibrationEffect;

.field public final opPkg:Ljava/lang/String;

.field public originalEffect:Landroid/os/VibrationEffect;

.field public final reason:Ljava/lang/String;

.field public final startTime:J

.field public final startTimeDebug:J

.field final synthetic this$0:Lcom/android/server/VibratorService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;
    .param p7, "reason"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    .line 306
    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    .line 309
    iput-object p4, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 310
    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    .line 311
    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 312
    iput-object p7, p0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/os/VibrationEffect;
    .param p4, "x3"    # Landroid/os/VibrationAttributes;
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lcom/android/server/VibratorService$1;

    .line 282
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onComplete()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, v1, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne p0, v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)V

    .line 340
    :cond_0
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, v1, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne p0, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$102(Lcom/android/server/VibratorService;I)I

    .line 321
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$202(Lcom/android/server/VibratorService;I)I

    .line 324
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, v1, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v1, v1, Landroid/os/VibrationEffect$LoopPattern;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$302(Lcom/android/server/VibratorService;I)I

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)V

    .line 330
    :cond_1
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasTimeoutLongerThan(J)Z
    .locals 4
    .param p1, "millis"    # J

    .line 344
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    .line 345
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isAlarm()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$800(I)Z

    move-result v0

    return v0
.end method

.method public isFromSystem()Z
    .locals 2

    .line 365
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    return v0
.end method

.method public isHapticFeedback()Z
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$500(I)Z

    move-result v0

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(I)Z

    move-result v0

    return v0
.end method

.method public isRingtone()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$700(I)Z

    move-result v0

    return v0
.end method

.method public toInfo()Lcom/android/server/VibratorService$VibrationInfo;
    .locals 10

    .line 369
    new-instance v9, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget-object v5, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v6, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method
