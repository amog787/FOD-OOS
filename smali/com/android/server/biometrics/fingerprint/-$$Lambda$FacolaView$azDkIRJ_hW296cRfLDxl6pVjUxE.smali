.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;->f$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;->f$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->lambda$onDraw$2$FacolaView(I)V

    return-void
.end method
