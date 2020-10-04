.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->lambda$YOMIOLvco2SvXVeJIulOSVKdX7A(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-void
.end method
