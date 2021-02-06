.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$setActiveUserInternal$5$BiometricServiceBase(I)V

    return-void
.end method
