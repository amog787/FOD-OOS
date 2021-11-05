.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$2:I

    iput-wide p4, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$3:J

    iput-object p6, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$2:I

    iget-wide v3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$3:J

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;->f$4:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->lambda$onAuthenticated$2$FingerprintService$1(IIJLjava/util/ArrayList;)V

    return-void
.end method
