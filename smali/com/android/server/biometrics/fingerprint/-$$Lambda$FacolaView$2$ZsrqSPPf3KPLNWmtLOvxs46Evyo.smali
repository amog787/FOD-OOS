.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FacolaView$2;

.field private final synthetic f$1:I

.field private final synthetic f$2:D

.field private final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView$2;IDF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;->f$0:Lcom/android/server/biometrics/fingerprint/FacolaView$2;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;->f$1:I

    iput-wide p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;->f$2:D

    iput p5, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;->f$0:Lcom/android/server/biometrics/fingerprint/FacolaView$2;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;->f$1:I

    iget-wide v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;->f$2:D

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;->f$3:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->lambda$onEvent$0$FacolaView$2(IDF)V

    return-void
.end method
