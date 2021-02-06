.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-wide p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;->f$1:J

    iput-object p4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;->f$2:Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;

    iput-object p5, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-wide v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;->f$1:J

    iget-object v3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;->f$2:Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;

    iget-object v4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$authenticateInternal$3$BiometricServiceBase(JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    return-void
.end method
