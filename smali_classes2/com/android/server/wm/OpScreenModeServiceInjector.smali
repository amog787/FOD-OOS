.class public Lcom/android/server/wm/OpScreenModeServiceInjector;
.super Ljava/lang/Object;
.source "OpScreenModeServiceInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final ENABLED:Z

.field private static final FEATURE_EXTREME_ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "OpScreenModeServiceInjector"

.field private static opScreenMode:Lcom/android/server/wm/IOpScreenModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x60

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 32
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    .line 34
    new-array v0, v0, [I

    const/16 v1, 0x118

    aput v1, v0, v3

    .line 35
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->FEATURE_EXTREME_ENABLE:Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDensityForUser(II)I
    .locals 1
    .param p0, "density"    # I
    .param p1, "userId"    # I

    .line 117
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 118
    return p0

    .line 121
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 122
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 123
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 126
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 127
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->adjustDensityForUser(II)I

    move-result v0

    return v0

    .line 129
    :cond_2
    return p0
.end method

.method public static getPreferredModeId(Lcom/android/server/wm/WindowState;I)I
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;
    .param p1, "candidateMode"    # I

    .line 70
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 75
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 76
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 79
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->getPreferredModeId(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    .line 82
    :cond_2
    return v1
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 41
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 46
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 49
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 50
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V

    .line 52
    :cond_2
    return-void
.end method

.method public static onRecordingConfigChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 185
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 186
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 189
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 190
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->onRecordingConfigChanged(Ljava/util/List;)V

    .line 192
    :cond_2
    return-void
.end method

.method public static onSetDensityForUser(II)V
    .locals 1
    .param p0, "density"    # I
    .param p1, "userId"    # I

    .line 102
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 108
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 111
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 112
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->onSetDensityForUser(II)V

    .line 114
    :cond_2
    return-void
.end method

.method public static pokeDynamicVsyncAnimation(I)V
    .locals 1
    .param p0, "duration"    # I

    .line 149
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->FEATURE_EXTREME_ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 154
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 155
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 158
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 159
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->pokeDynamicVsyncAnimation(I)V

    .line 161
    :cond_2
    return-void

    .line 150
    :cond_3
    :goto_0
    return-void
.end method

.method public static setRateDirectly(II)V
    .locals 1
    .param p0, "rate"    # I
    .param p1, "timeout"    # I

    .line 133
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 138
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 139
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 142
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->setRateDirectly(II)V

    .line 145
    :cond_2
    return-void
.end method

.method public static setRefreshRate(Landroid/os/IBinder;I)V
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "rate"    # I

    .line 55
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 61
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 64
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 65
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->setRefreshRate(Landroid/os/IBinder;I)V

    .line 67
    :cond_2
    return-void
.end method

.method public static updateGlobalModeId(I)I
    .locals 1
    .param p0, "modeId"    # I

    .line 86
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 87
    return p0

    .line 90
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 92
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 95
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->updateGlobalModeId(I)I

    move-result v0

    return v0

    .line 98
    :cond_2
    return p0
.end method

.method public static updateInputMethod(Z)V
    .locals 1
    .param p0, "state"    # Z

    .line 165
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 170
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 171
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 174
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 175
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->updateInputMethod(Z)V

    .line 177
    :cond_2
    return-void
.end method

.method public static updateKeepHighVsync(Z)V
    .locals 1
    .param p0, "keep"    # Z

    .line 196
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 201
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 202
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 205
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->updateKeepHighVsync(Z)V

    .line 208
    :cond_2
    return-void
.end method
