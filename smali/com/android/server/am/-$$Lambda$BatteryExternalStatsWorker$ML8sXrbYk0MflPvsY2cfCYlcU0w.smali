.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
