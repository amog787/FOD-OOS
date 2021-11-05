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

    .line 32
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG:Z

    .line 33
    const-class v0, Lcom/android/server/OpVibratorServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    .line 36
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doVibratorOn(JI)V
    .locals 2
    .param p0, "millis"    # J
    .param p2, "amplitude"    # I

    .line 143
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 147
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpVibratorService;->doVibratorOn(JI)V

    .line 148
    return-void
.end method

.method public static doVibratorPerformEffect(IILcom/android/server/VibratorService$Vibration;)J
    .locals 2
    .param p0, "id"    # I
    .param p1, "effectStrength"    # I
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 135
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorPerformEffect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 139
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpVibratorService;->doVibratorPerformEffect(IILcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static doVibratorSetAmplitude(I)V
    .locals 2
    .param p0, "amplitude"    # I

    .line 127
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorSetAmplitude()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 131
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->doVibratorSetAmplitude(I)V

    .line 132
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

    .line 199
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getDurationMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 203
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

    .line 191
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 195
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getEffectMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getImPkg()Ljava/lang/String;
    .locals 2

    .line 236
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getImPkg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 240
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getImPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntensityEffectType()I
    .locals 2

    .line 167
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 171
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getIntensityEffectType()I

    move-result v0

    return v0
.end method

.method public static getIntensityStrengthType()I
    .locals 2

    .line 183
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getIntensityStrengthType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 187
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getIntensityStrengthType()I

    move-result v0

    return v0
.end method

.method public static getOldIntensityEffectType()I
    .locals 2

    .line 175
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getOldIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 179
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getOldIntensityEffectType()I

    move-result v0

    return v0
.end method

.method public static getRepeatVibrate()Z
    .locals 2

    .line 151
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getRepeatVibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 155
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getRepeatVibrate()Z

    move-result v0

    return v0
.end method

.method public static getVibrateOnTouchIntensity()I
    .locals 2

    .line 215
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getVibrateOnTouchIntensity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 219
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getVibrateOnTouchIntensity()I

    move-result v0

    return v0
.end method

.method public static getVibratorEffectMap(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getVibratorEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->getVibratorEffectMap(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static initCaliFile()V
    .locals 2

    .line 55
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.initCaliFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 59
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->initCaliFile()V

    .line 60
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vibratorservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpVibratorService;

    sput-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    .line 44
    :cond_0
    return-void
.end method

.method public static initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetProduct"    # Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.initVibratorEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 51
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpVibratorService;->initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static isVibrating()Z
    .locals 2

    .line 159
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.isVibrating()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 163
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->isVibrating()Z

    move-result v0

    return v0
.end method

.method public static markWeakenFlagForDarkMode(Landroid/os/VibrationAttributes;)V
    .locals 3
    .param p0, "attrs"    # Landroid/os/VibrationAttributes;

    .line 267
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call OpVibratorServiceInjector.markWeakenFlagForDarkMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 271
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->markWeakenFlagForDarkMode(Landroid/os/VibrationAttributes;)V

    .line 272
    return-void
.end method

.method public static motorF0Calibration()V
    .locals 2

    .line 225
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.motorF0Calibration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 229
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->motorF0Calibration()V

    .line 230
    return-void
.end method

.method public static setGlobalDarkMode(Z)V
    .locals 3
    .param p0, "dark"    # Z

    .line 259
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call OpVibratorServiceInjector.setGlobalDarkMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 263
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setGlobalDarkMode(Z)V

    .line 264
    return-void
.end method

.method public static setIntensityEffectType(I)V
    .locals 2
    .param p0, "effectType"    # I

    .line 79
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 83
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIntensityEffectType(I)V

    .line 84
    return-void
.end method

.method public static setIsEffectChanged(Z)V
    .locals 2
    .param p0, "change"    # Z

    .line 103
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIsEffectChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 107
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIsEffectChanged(Z)V

    .line 108
    return-void
.end method

.method public static setIsVibrating(Z)V
    .locals 2
    .param p0, "vibrate"    # Z

    .line 95
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIsVibrating()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 99
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIsVibrating(Z)V

    .line 100
    return-void
.end method

.method public static setOldIntensityEffectType(I)V
    .locals 2
    .param p0, "effectType"    # I

    .line 87
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setOldIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 91
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setOldIntensityEffectType(I)V

    .line 92
    return-void
.end method

.method public static setRepeatVibrate(Z)V
    .locals 2
    .param p0, "repeat"    # Z

    .line 111
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setRepeatVibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 115
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setRepeatVibrate(Z)V

    .line 116
    return-void
.end method

.method public static setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I
    .locals 2
    .param p0, "currentVibration"    # Lcom/android/server/VibratorService$Vibration;
    .param p1, "sceneType"    # I
    .param p2, "lock"    # Ljava/lang/Object;

    .line 119
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setVibratorEffect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 123
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpVibratorService;->setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static turnOffLinearMotorVibrator()V
    .locals 2

    .line 248
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.turnOffLinearMotorVibrator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 252
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->turnOffLinearMotorVibrator()V

    .line 253
    return-void
.end method

.method public static updateVibrator()V
    .locals 2

    .line 207
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.updateVibrator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 211
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->updateVibrator()V

    .line 212
    return-void
.end method

.method public static vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 63
    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.vibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    .line 67
    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/IOpVibratorService;->vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method
