.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;->f$0:Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    iput p2, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;->f$1:I

    iput p3, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;->f$2:I

    iput-object p4, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;->f$0:Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    iget v1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;->f$1:I

    iget v2, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;->f$2:I

    iget-object v3, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->lambda$onAppIdleStateChanged$0$QuotaController$StandbyTracker(IILjava/lang/String;)V

    return-void
.end method
