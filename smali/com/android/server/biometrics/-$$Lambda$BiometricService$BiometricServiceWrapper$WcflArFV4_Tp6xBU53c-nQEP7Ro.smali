.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

.field private final synthetic f$1:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/hardware/biometrics/IBiometricServiceReceiver;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;->f$0:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;->f$1:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iput p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;->f$0:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;->f$1:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;->f$2:I

    iget-object v3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;->f$3:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->lambda$authenticate$0$BiometricService$BiometricServiceWrapper(Landroid/hardware/biometrics/IBiometricServiceReceiver;ILandroid/os/Bundle;)V

    return-void
.end method
