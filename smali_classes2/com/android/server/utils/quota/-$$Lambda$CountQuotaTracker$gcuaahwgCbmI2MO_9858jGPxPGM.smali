.class public final synthetic Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$gcuaahwgCbmI2MO_9858jGPxPGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$gcuaahwgCbmI2MO_9858jGPxPGM;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$gcuaahwgCbmI2MO_9858jGPxPGM;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->lambda$new$0$CountQuotaTracker()V

    return-void
.end method
