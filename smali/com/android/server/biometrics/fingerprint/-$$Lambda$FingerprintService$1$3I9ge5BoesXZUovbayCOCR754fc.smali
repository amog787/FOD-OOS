.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:J

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$2:I

    iput-wide p4, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$3:J

    iput p6, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$2:I

    iget-wide v3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$3:J

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;->f$4:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->lambda$onEnumerate$5$FingerprintService$1(IIJI)V

    return-void
.end method
