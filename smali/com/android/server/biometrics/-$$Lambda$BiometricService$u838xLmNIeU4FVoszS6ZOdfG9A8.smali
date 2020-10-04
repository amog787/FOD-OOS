.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricService;

.field private final synthetic f$1:I

.field private final synthetic f$10:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

.field private final synthetic f$2:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final synthetic f$3:Landroid/os/IBinder;

.field private final synthetic f$4:J

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:Landroid/os/Bundle;

.field private final synthetic f$7:I

.field private final synthetic f$8:I

.field private final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/IBiometricServiceReceiver;Landroid/os/IBinder;JLjava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$0:Lcom/android/server/biometrics/BiometricService;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$2:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iput-object p4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$3:Landroid/os/IBinder;

    iput-wide p5, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$4:J

    iput-object p7, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$5:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$6:Landroid/os/Bundle;

    iput p9, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$7:I

    iput p10, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$8:I

    iput p11, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$9:I

    iput-object p12, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$10:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$2:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$3:Landroid/os/IBinder;

    iget-wide v4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$4:J

    iget-object v6, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$5:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$6:Landroid/os/Bundle;

    iget v8, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$7:I

    iget v9, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$8:I

    iget v10, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$9:I

    iget-object v11, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;->f$10:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/BiometricService;->lambda$handleAuthenticate$1$BiometricService(ILandroid/hardware/biometrics/IBiometricServiceReceiver;Landroid/os/IBinder;JLjava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method
