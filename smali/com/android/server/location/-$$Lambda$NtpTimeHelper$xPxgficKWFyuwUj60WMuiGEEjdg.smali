.class public final synthetic Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/NtpTimeHelper;

.field private final synthetic f$1:J

.field private final synthetic f$2:J

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/NtpTimeHelper;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;->f$0:Lcom/android/server/location/NtpTimeHelper;

    iput-wide p2, p0, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;->f$1:J

    iput-wide p4, p0, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;->f$2:J

    iput-wide p6, p0, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;->f$0:Lcom/android/server/location/NtpTimeHelper;

    iget-wide v1, p0, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;->f$1:J

    iget-wide v3, p0, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;->f$2:J

    iget-wide v5, p0, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;->f$3:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/NtpTimeHelper;->lambda$blockingGetNtpTimeAndInject$0$NtpTimeHelper(JJJ)V

    return-void
.end method
