.class public Lcom/android/server/wm/OpScreenModeServiceInjector;
.super Ljava/lang/Object;
.source "OpScreenModeServiceInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final ENABLED:Z

.field private static final FEATURE_EXTREME_ENABLE:Z

.field private static final OP_ONE_HAND_ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "OpScreenModeServiceInjector"

.field private static opScreenMode:Lcom/android/server/wm/IOpScreenModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x79

    aput v3, v1, v2

    .line 29
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    .line 31
    new-array v1, v0, [I

    const/16 v3, 0x140

    aput v3, v1, v2

    .line 32
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpScreenModeServiceInjector;->FEATURE_EXTREME_ENABLE:Z

    .line 35
    new-array v0, v0, [I

    const/16 v1, 0x102

    aput v1, v0, v2

    .line 36
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->OP_ONE_HAND_ENABLE:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDensityForUser(II)I
    .locals 1
    .param p0, "density"    # I
    .param p1, "userId"    # I

    .line 118
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 119
    return p0

    .line 122
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 123
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 124
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 127
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 128
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->adjustDensityForUser(II)I

    move-result v0

    return v0

    .line 130
    :cond_2
    return p0
.end method

.method public static doScreenRotation()V
    .locals 1

    .line 135
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->FEATURE_EXTREME_ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 141
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 144
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenModeService;->doScreenRotation()V

    .line 147
    :cond_2
    return-void

    .line 136
    :cond_3
    :goto_0
    return-void
.end method

.method public static getPreferredModeId(Lcom/android/server/wm/WindowState;I)I
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;
    .param p1, "candidateMode"    # I

    .line 71
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 75
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 77
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 80
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->getPreferredModeId(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    .line 83
    :cond_2
    return v1
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 47
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 50
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V

    .line 53
    :cond_2
    return-void
.end method

.method public static isQHD()Z
    .locals 2

    .line 151
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->OP_ONE_HAND_ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 157
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 160
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 161
    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenModeService;->isQHD()Z

    move-result v0

    return v0

    .line 164
    :cond_2
    return v1

    .line 152
    :cond_3
    :goto_0
    return v1
.end method

.method public static onSetDensityForUser(II)V
    .locals 1
    .param p0, "density"    # I
    .param p1, "userId"    # I

    .line 103
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 108
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 109
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 112
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->onSetDensityForUser(II)V

    .line 115
    :cond_2
    return-void
.end method

.method public static setRefreshRate(Landroid/os/IBinder;I)V
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "rate"    # I

    .line 56
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 62
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 65
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->setRefreshRate(Landroid/os/IBinder;I)V

    .line 68
    :cond_2
    return-void
.end method

.method public static updateGlobalModeId(I)I
    .locals 1
    .param p0, "modeId"    # I

    .line 87
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 88
    return p0

    .line 91
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 93
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    .line 96
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->updateGlobalModeId(I)I

    move-result v0

    return v0

    .line 99
    :cond_2
    return p0
.end method
