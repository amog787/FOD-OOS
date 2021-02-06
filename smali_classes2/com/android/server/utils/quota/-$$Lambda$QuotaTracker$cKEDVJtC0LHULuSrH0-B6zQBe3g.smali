.class public final synthetic Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$cKEDVJtC0LHULuSrH0-B6zQBe3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$cKEDVJtC0LHULuSrH0-B6zQBe3g;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$cKEDVJtC0LHULuSrH0-B6zQBe3g;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker;->lambda$scheduleQuotaCheck$2$QuotaTracker()V

    return-void
.end method
