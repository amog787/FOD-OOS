.class public Lcom/android/server/am/OpMemoryTrackerInjector;
.super Ljava/lang/Object;
.source "OpMemoryTrackerInjector.java"


# static fields
.field private static final ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "OpMemoryTrackerInjector"

.field private static sDebug:Z

.field private static sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sDebug:Z

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x14

    aput v2, v0, v1

    .line 31
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->ENABLED:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfNeedReport(IILcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "numCached"    # I
    .param p1, "numEmpty"    # I
    .param p2, "top"    # Lcom/android/server/am/ProcessRecord;

    .line 58
    sget-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpMemoryTrackerInjector;->initialization()V

    .line 63
    sget-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpMemoryTracker;->checkIfNeedReport(IILcom/android/server/am/ProcessRecord;)V

    .line 66
    :cond_1
    return-void
.end method

.method public static checkIfNeedReport(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 47
    sget-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpMemoryTrackerInjector;->initialization()V

    .line 52
    sget-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpMemoryTracker;->checkIfNeedReport(Lcom/android/server/am/ProcessRecord;)V

    .line 55
    :cond_1
    return-void
.end method

.method public static initAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 36
    sget-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpMemoryTrackerInjector;->initialization()V

    .line 41
    sget-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpMemoryTracker;->initAms(Lcom/android/server/am/ActivityManagerService;)V

    .line 44
    :cond_1
    return-void
.end method

.method private static initialization()V
    .locals 1

    .line 69
    sget-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_memorytracker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 71
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpMemoryTracker;

    sput-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    .line 73
    :cond_0
    return-void
.end method
