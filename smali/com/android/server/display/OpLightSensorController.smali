.class public Lcom/android/server/display/OpLightSensorController;
.super Ljava/lang/Object;
.source "OpLightSensorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OpLightSensorController$Listener;,
        Lcom/android/server/display/OpLightSensorController$OpLightSensorHandler;
    }
.end annotation


# static fields
.field private static final MSG_DEBOUNCE_FLASHING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OpLightSensorController"


# instance fields
.field private mAuxLastLux:F

.field private mAuxLightSensor:Landroid/hardware/Sensor;

.field private final mAuxLightSensorLuxLimit:F

.field private final mAuxLightSensorName:Ljava/lang/String;

.field private mBlockingAuxLightSensorForDebounce:Z

.field private mHandler:Landroid/os/Handler;

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mListener:Lcom/android/server/display/OpLightSensorController$Listener;

.field private mLoggingEnabled:Z

.field private mMainLastLux:F

.field private mMainLightSensor:Landroid/hardware/Sensor;

.field private final mMainLightSensorName:Ljava/lang/String;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTorchModeEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/OpLightSensorController$Listener;Landroid/hardware/SensorManager;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/display/OpLightSensorController$Listener;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "mainLightSensor"    # Ljava/lang/String;
    .param p5, "auxLightSensor"    # Ljava/lang/String;
    .param p6, "auxLightSensorLuxLimit"    # F

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorEnabled:Z

    .line 30
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/OpLightSensorController;->mMainLastLux:F

    .line 31
    iput v1, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLastLux:F

    .line 42
    iput-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mTorchModeEnabled:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mBlockingAuxLightSensorForDebounce:Z

    .line 81
    new-instance v0, Lcom/android/server/display/OpLightSensorController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/OpLightSensorController$1;-><init>(Lcom/android/server/display/OpLightSensorController;)V

    iput-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 49
    iput-object p2, p0, Lcom/android/server/display/OpLightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 51
    iput-object p4, p0, Lcom/android/server/display/OpLightSensorController;->mMainLightSensorName:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensorName:Ljava/lang/String;

    .line 54
    iput p6, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensorLuxLimit:F

    .line 56
    invoke-direct {p0, p4}, Lcom/android/server/display/OpLightSensorController;->findMainLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 57
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensorName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/display/OpLightSensorController;->findAuxLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 59
    iput-object p1, p0, Lcom/android/server/display/OpLightSensorController;->mListener:Lcom/android/server/display/OpLightSensorController$Listener;

    .line 61
    new-instance v0, Lcom/android/server/display/OpLightSensorController$OpLightSensorHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/display/OpLightSensorController$OpLightSensorHandler;-><init>(Lcom/android/server/display/OpLightSensorController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OpLightSensorController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mBlockingAuxLightSensorForDebounce:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/display/OpLightSensorController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcom/android/server/display/OpLightSensorController;->mBlockingAuxLightSensorForDebounce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/OpLightSensorController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/OpLightSensorController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/OpLightSensorController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mMainLightSensorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/OpLightSensorController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget v0, p0, Lcom/android/server/display/OpLightSensorController;->mMainLastLux:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/OpLightSensorController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;
    .param p1, "x1"    # F

    .line 15
    iput p1, p0, Lcom/android/server/display/OpLightSensorController;->mMainLastLux:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/OpLightSensorController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mTorchModeEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/OpLightSensorController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget v0, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLastLux:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/OpLightSensorController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;
    .param p1, "x1"    # F

    .line 15
    iput p1, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLastLux:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/OpLightSensorController;)Lcom/android/server/display/OpLightSensorController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mListener:Lcom/android/server/display/OpLightSensorController$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/OpLightSensorController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/OpLightSensorController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;

    .line 15
    iget v0, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensorLuxLimit:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/OpLightSensorController;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpLightSensorController;
    .param p1, "x1"    # F

    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/display/OpLightSensorController;->calculateAuxLux(F)F

    move-result v0

    return v0
.end method

.method private calculateAuxLux(F)F
    .locals 4
    .param p1, "auxLux"    # F

    .line 126
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 127
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 128
    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 129
    return p1

    .line 130
    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    .line 131
    return v0

    .line 132
    :cond_2
    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_3

    .line 133
    const v2, 0x3e99999a    # 0.3f

    sub-float v1, p1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1

    .line 134
    :cond_3
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float v3, p1, v0

    if-gez v3, :cond_4

    .line 135
    const v0, 0x3d3020c5    # 0.043f

    sub-float v2, p1, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    return v2

    .line 136
    :cond_4
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v3, p1, v1

    if-gez v3, :cond_5

    .line 137
    const v1, 0x3f70a3d7    # 0.94f

    sub-float v0, p1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0

    .line 138
    :cond_5
    const v2, 0x45ea6000    # 7500.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_6

    .line 139
    const v2, 0x3f8a3d71    # 1.08f

    sub-float v1, p1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1

    .line 141
    :cond_6
    return v2
.end method

.method private findAuxLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 184
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iput-object v1, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensor:Landroid/hardware/Sensor;

    .line 186
    goto :goto_1

    .line 188
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    goto :goto_0

    .line 189
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 193
    return-object v0

    .line 190
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findMainLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 170
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iput-object v1, p0, Lcom/android/server/display/OpLightSensorController;->mMainLightSensor:Landroid/hardware/Sensor;

    .line 172
    goto :goto_1

    .line 174
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    goto :goto_0

    .line 175
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mMainLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 179
    return-object v0

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 221
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 222
    const-string v0, "OpLightSensorController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMainLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController;->mMainLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAuxLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMainLastLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpLightSensorController;->mMainLastLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAuxLastLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLastLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAuxLightSensorLuxLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensorLuxLimit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTorchModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OpLightSensorController;->mTorchModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBlockingAuxLightSensorForDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OpLightSensorController;->mBlockingAuxLightSensorForDebounce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 147
    iget-boolean v2, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorEnabled:Z

    if-nez v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController;->mMainLightSensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcom/android/server/display/OpLightSensorController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 149
    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLightSensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcom/android/server/display/OpLightSensorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 150
    iput-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorEnabled:Z

    .line 151
    return v0

    .line 153
    :cond_0
    return v1

    .line 156
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/server/display/OpLightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 158
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/display/OpLightSensorController;->mMainLastLux:F

    .line 159
    iput v2, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLastLux:F

    .line 160
    iput-boolean v1, p0, Lcom/android/server/display/OpLightSensorController;->mLightSensorEnabled:Z

    .line 161
    return v0

    .line 163
    :cond_2
    return v1
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 197
    iget-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 198
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/OpLightSensorController;->mLoggingEnabled:Z

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public setTorchModeEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 207
    iget-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTorchModeEnabled(): enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLightSensorController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/OpLightSensorController;->mTorchModeEnabled:Z

    .line 211
    if-nez p1, :cond_1

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/OpLightSensorController;->mBlockingAuxLightSensorForDebounce:Z

    .line 213
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/OpLightSensorController;->mAuxLastLux:F

    .line 214
    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 215
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/display/OpLightSensorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 218
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
