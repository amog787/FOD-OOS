.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricStrengthController$tO9bm1fJ-LRkdtTtLs_q184crJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricStrengthController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricStrengthController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricStrengthController$tO9bm1fJ-LRkdtTtLs_q184crJU;->f$0:Lcom/android/server/biometrics/BiometricStrengthController;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricStrengthController$tO9bm1fJ-LRkdtTtLs_q184crJU;->f$0:Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricStrengthController;->lambda$new$0$BiometricStrengthController(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
