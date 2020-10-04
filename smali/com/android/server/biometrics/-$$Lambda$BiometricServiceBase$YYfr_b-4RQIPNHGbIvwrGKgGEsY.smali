.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field private final synthetic f$1:Lcom/android/server/biometrics/EnumerateClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;->f$1:Lcom/android/server/biometrics/EnumerateClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;->f$1:Lcom/android/server/biometrics/EnumerateClient;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$enumerateInternal$5$BiometricServiceBase(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method
