.class public abstract Lcom/android/server/policy/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
    }
.end annotation


# static fields
.field private static final DEFAULT_BATCH_LATENCY:I = 0x186a0

.field private static LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z = false


# instance fields
.field private mCurrentRotation:I

.field private mDPCSensor:Landroid/hardware/Sensor;

.field private mEnabled:Z

.field private mFlatState:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 91
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mFlatState:I

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 107
    iput-object p2, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 108
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 109
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    .line 110
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v2, 0x0

    .line 112
    .local v2, "wakeUpDeviceOrientationSensor":Landroid/hardware/Sensor;
    const/4 v3, 0x0

    .line 119
    .local v3, "nonWakeUpDeviceOrientationSensor":Landroid/hardware/Sensor;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 120
    .local v5, "s":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    move-object v2, v5

    goto :goto_1

    .line 123
    :cond_0
    move-object v3, v5

    .line 125
    .end local v5    # "s":Landroid/hardware/Sensor;
    :goto_1
    goto :goto_0

    .line 127
    :cond_1
    if-eqz v2, :cond_2

    .line 128
    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    goto :goto_2

    .line 130
    :cond_2
    iput-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 133
    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_3

    .line 134
    new-instance v4, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {v4, p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 137
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-nez v4, :cond_4

    .line 138
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 140
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .line 142
    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 145
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 49
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/WindowOrientationListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 49
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/WindowOrientationListener;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 49
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/WindowOrientationListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 49
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mFlatState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 49
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 196
    const-string v1, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v0

    return-void

    .line 199
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 200
    sget-boolean v1, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_1

    .line 201
    const-string v1, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 204
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 206
    :cond_2
    monitor-exit v0

    .line 207
    return-void

    .line 206
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

    .line 292
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCurrentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSensorType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 304
    :cond_0
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 2

    .line 154
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/WindowOrientationListener;->enable(Z)V

    .line 157
    return-void
.end method

.method public enable(Z)V
    .locals 9
    .param p1, "clearCurrentRotation"    # Z

    .line 167
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 169
    const-string v1, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_1

    .line 173
    monitor-exit v0

    return-void

    .line 175
    :cond_1
    sget-boolean v1, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_2

    .line 176
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowOrientationListener enabled clearCurrentRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->resetLocked(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 181
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v6, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    const v7, 0x186a0

    iget-object v8, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    goto :goto_0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    iget-object v6, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 186
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProposedRotation()I
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 255
    :cond_0
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .locals 4

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 220
    .local v0, "whenElapsedNanos":J
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    .line 224
    :cond_0
    monitor-exit v2

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onTouchStart()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    .line 214
    :cond_0
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 237
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 283
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 284
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 285
    const-wide v3, 0x10800000001L

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 286
    const-wide v3, 0x10e00000002L

    iget v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 287
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 289
    return-void

    .line 287
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
