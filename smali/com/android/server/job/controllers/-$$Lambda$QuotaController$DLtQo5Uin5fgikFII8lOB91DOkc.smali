.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;->f$0:J

    iput-boolean p3, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;->f$0:J

    iget-boolean v2, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;->f$1:Z

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->lambda$handleNewChargingStateLocked$2(JZLcom/android/server/job/controllers/QuotaController$Timer;)V

    return-void
.end method
