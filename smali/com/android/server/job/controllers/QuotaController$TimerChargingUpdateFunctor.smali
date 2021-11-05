.class Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerChargingUpdateFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/QuotaController$Timer;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCharging:Z

.field private mNowElapsed:J

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p2, "x1"    # Lcom/android/server/job/controllers/QuotaController$1;

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 1134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->setStatus(JZ)V

    return-void
.end method

.method private setStatus(JZ)V
    .locals 0
    .param p1, "nowElapsed"    # J
    .param p3, "isCharging"    # Z

    .line 1139
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    .line 1140
    iput-boolean p3, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    .line 1141
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/QuotaController$Timer;)V
    .locals 4
    .param p1, "timer"    # Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1145
    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->access$700(Lcom/android/server/job/controllers/QuotaController$Timer;)Lcom/android/server/job/controllers/QuotaController$Package;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    .line 1146
    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->access$700(Lcom/android/server/job/controllers/QuotaController$Timer;)Lcom/android/server/job/controllers/QuotaController$Package;

    move-result-object v1

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    .line 1145
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1149
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 1151
    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1134
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->accept(Lcom/android/server/job/controllers/QuotaController$Timer;)V

    return-void
.end method
