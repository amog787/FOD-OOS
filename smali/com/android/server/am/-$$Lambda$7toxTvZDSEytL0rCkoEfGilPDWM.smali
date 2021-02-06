.class public final synthetic Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;->INSTANCE:Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/internal/os/BatteryStatsImpl;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes(ZZ)V

    return-void
.end method
