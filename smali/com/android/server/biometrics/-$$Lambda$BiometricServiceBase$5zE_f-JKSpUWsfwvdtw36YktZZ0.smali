.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field public final synthetic f$1:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;->f$1:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;->f$1:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$addLockoutResetCallback$8$BiometricServiceBase(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method
