.class public abstract Lcom/android/server/policy/WakeGestureListener;
.super Ljava/lang/Object;
.source "WakeGestureListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeGestureListener"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/TriggerEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTriggerRequested:Z

.field private final mWakeUpRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/server/policy/WakeGestureListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WakeGestureListener$1;-><init>(Lcom/android/server/policy/WakeGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    .line 94
    new-instance v0, Lcom/android/server/policy/WakeGestureListener$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WakeGestureListener$2;-><init>(Lcom/android/server/policy/WakeGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;

    .line 43
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    iput-object p2, p0, Lcom/android/server/policy/WakeGestureListener;->mHandler:Landroid/os/Handler;

    .line 46
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WakeGestureListener;

    .line 31
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/WakeGestureListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/WakeGestureListener;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WakeGestureListener;

    .line 31
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/WakeGestureListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WakeGestureListener;

    .line 31
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancelWakeUpTrigger()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    .line 70
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    iget-object v3, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 72
    :cond_0
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WakeGestureListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mTriggerRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSupported()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract onWakeUp()V
.end method

.method public requestWakeUpTrigger()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    if-nez v1, :cond_0

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    .line 61
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    iget-object v3, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 63
    :cond_0
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
