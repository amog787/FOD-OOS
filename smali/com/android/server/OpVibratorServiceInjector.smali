.class public Lcom/android/server/OpVibratorServiceInjector;
.super Ljava/lang/Object;
.source "OpVibratorServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOpVibratorService:Lcom/android/server/IOpVibratorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG:Z

    .line 31
    const-class v0, Lcom/android/server/OpVibratorServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doVibratorOn(JI)V
    .locals 2
    .param p0, "millis"    # J
    .param p2, "amplitude"    # I

    .line 141
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 145
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpVibratorService;->doVibratorOn(JI)V

    .line 146
    return-void
.end method

.method public static doVibratorPerformEffect(II)J
    .locals 2
    .param p0, "id"    # I
    .param p1, "effectStrength"    # I

    .line 133
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorPerformEffect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 137
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpVibratorService;->doVibratorPerformEffect(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static doVibratorSetAmplitude(I)V
    .locals 2
    .param p0, "amplitude"    # I

    .line 125
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorSetAmplitude()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 129
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->doVibratorSetAmplitude(I)V

    .line 130
    return-void
.end method

.method public static getDurationMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 197
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getDurationMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 201
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getDurationMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getEffectMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 189
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 193
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getEffectMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getImPkg()Ljava/lang/String;
    .locals 2

    .line 234
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getImPkg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 238
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getImPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntensityEffectType()I
    .locals 2

    .line 165
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 169
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getIntensityEffectType()I

    move-result v0

    return v0
.end method

.method public static getIntensityStrengthType()I
    .locals 2

    .line 181
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getIntensityStrengthType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 185
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getIntensityStrengthType()I

    move-result v0

    return v0
.end method

.method public static getOldIntensityEffectType()I
    .locals 2

    .line 173
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getOldIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 177
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getOldIntensityEffectType()I

    move-result v0

    return v0
.end method

.method public static getRepeatVibrate()Z
    .locals 2

    .line 149
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getRepeatVibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 153
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getRepeatVibrate()Z

    move-result v0

    return v0
.end method

.method public static getVibrateOnTouchIntensity()I
    .locals 2

    .line 213
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getVibrateOnTouchIntensity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 217
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getVibrateOnTouchIntensity()I

    move-result v0

    return v0
.end method

.method public static getVibratorEffectMap(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 69
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getVibratorEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 73
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->getVibratorEffectMap(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static initCaliFile()V
    .locals 2

    .line 53
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.initCaliFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 57
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->initCaliFile()V

    .line 58
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 39
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vibratorservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpVibratorService;

    sput-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    .line 42
    :cond_0
    return-void
.end method

.method public static initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetProduct"    # Ljava/lang/String;

    .line 45
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.initVibratorEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 49
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpVibratorService;->initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static isVibrating()Z
    .locals 2

    .line 157
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.isVibrating()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 161
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->isVibrating()Z

    move-result v0

    return v0
.end method

.method public static motorF0Calibration()V
    .locals 2

    .line 223
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.motorF0Calibration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 227
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->motorF0Calibration()V

    .line 228
    return-void
.end method

.method public static setIntensityEffectType(I)V
    .locals 2
    .param p0, "effectType"    # I

    .line 77
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 81
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIntensityEffectType(I)V

    .line 82
    return-void
.end method

.method public static setIsEffectChanged(Z)V
    .locals 2
    .param p0, "change"    # Z

    .line 101
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIsEffectChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 105
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIsEffectChanged(Z)V

    .line 106
    return-void
.end method

.method public static setIsVibrating(Z)V
    .locals 2
    .param p0, "vibrate"    # Z

    .line 93
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIsVibrating()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 97
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIsVibrating(Z)V

    .line 98
    return-void
.end method

.method public static setOldIntensityEffectType(I)V
    .locals 2
    .param p0, "effectType"    # I

    .line 85
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setOldIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 89
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setOldIntensityEffectType(I)V

    .line 90
    return-void
.end method

.method public static setRepeatVibrate(Z)V
    .locals 2
    .param p0, "repeat"    # Z

    .line 109
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setRepeatVibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 113
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setRepeatVibrate(Z)V

    .line 114
    return-void
.end method

.method public static setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I
    .locals 2
    .param p0, "currentVibration"    # Lcom/android/server/VibratorService$Vibration;
    .param p1, "sceneType"    # I
    .param p2, "lock"    # Ljava/lang/Object;

    .line 117
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setVibratorEffect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 121
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpVibratorService;->setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static updateVibrator()V
    .locals 2

    .line 205
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.updateVibrator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 209
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->updateVibrator()V

    .line 210
    return-void
.end method

.method public static vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.vibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 65
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/IOpVibratorService;->vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method
