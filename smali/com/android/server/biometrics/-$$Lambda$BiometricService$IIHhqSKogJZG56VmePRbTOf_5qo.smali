.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$0:Lcom/android/server/biometrics/BiometricService;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$4:Landroid/os/IBinder;

    iput-wide p6, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$5:J

    iput-object p8, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$6:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iput p9, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$7:I

    iput p10, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$8:I

    iput p11, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$9:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$1:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$2:I

    iget-object v3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$4:Landroid/os/IBinder;

    iget-wide v5, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$5:J

    iget-object v7, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$6:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget v8, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$7:I

    iget v9, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$8:I

    iget v10, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;->f$9:I

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/biometrics/BiometricService;->lambda$handleAuthenticate$0$BiometricService(Landroid/os/Bundle;ILjava/lang/String;Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;III)V

    return-void
.end method
