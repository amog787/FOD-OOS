.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$gQXnReJuA2NMLliQpU3b042kSro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FacolaView$3;

.field private final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView$3;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$gQXnReJuA2NMLliQpU3b042kSro;->f$0:Lcom/android/server/biometrics/fingerprint/FacolaView$3;

    iput-wide p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$gQXnReJuA2NMLliQpU3b042kSro;->f$1:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$gQXnReJuA2NMLliQpU3b042kSro;->f$0:Lcom/android/server/biometrics/fingerprint/FacolaView$3;

    iget-wide v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$gQXnReJuA2NMLliQpU3b042kSro;->f$1:D

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->lambda$onBacklightChange$0$FacolaView$3(D)V

    return-void
.end method
