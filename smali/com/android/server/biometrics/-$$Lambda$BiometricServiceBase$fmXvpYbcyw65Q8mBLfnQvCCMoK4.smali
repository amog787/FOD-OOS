.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field private final synthetic f$1:Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;->f$1:Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;->f$1:Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$enrollInternal$0$BiometricServiceBase(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V

    return-void
.end method
