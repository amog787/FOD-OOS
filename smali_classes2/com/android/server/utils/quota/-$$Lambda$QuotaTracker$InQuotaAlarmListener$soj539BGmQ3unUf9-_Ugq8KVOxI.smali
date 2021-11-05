.class public final synthetic Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$InQuotaAlarmListener$soj539BGmQ3unUf9-_Ugq8KVOxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$InQuotaAlarmListener$soj539BGmQ3unUf9-_Ugq8KVOxI;->f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    iput-object p2, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$InQuotaAlarmListener$soj539BGmQ3unUf9-_Ugq8KVOxI;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$InQuotaAlarmListener$soj539BGmQ3unUf9-_Ugq8KVOxI;->f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    iget-object v1, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$InQuotaAlarmListener$soj539BGmQ3unUf9-_Ugq8KVOxI;->f$1:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->lambda$onAlarm$0$QuotaTracker$InQuotaAlarmListener(Landroid/util/Pair;)V

    return-void
.end method
