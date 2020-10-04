.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;->f$1:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;->f$1:Landroid/os/IBinder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$cancelAuthenticationInternal$3$BiometricServiceBase(Landroid/os/IBinder;Z)V

    return-void
.end method
