.class public Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;
.super Ljava/lang/Object;
.source "OpAudioMonitorManagerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OpAudioMonitorManagerInjector"

.field private static sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initOpAudioMonitorManager(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioService"    # Lcom/android/server/audio/AudioService;

    .line 33
    sget-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_audiomonitor_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    sput-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;->initInstance(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    .line 39
    :cond_1
    return-void
.end method

.method public static onAcquireScreenoffWakeLock()V
    .locals 1

    .line 42
    sget-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_audiomonitor_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    sput-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0}, Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;->onAcquireScreenoffWakeLock()V

    .line 48
    :cond_1
    return-void
.end method

.method public static onReleaseScreenoffWakeLock()V
    .locals 1

    .line 51
    sget-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_audiomonitor_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    sput-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/audiomonitor/OpAudioMonitorManagerInjector;->sOpAudioMonitorManager:Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;->onReleaseScreenoffWakeLock()V

    .line 57
    :cond_1
    return-void
.end method
