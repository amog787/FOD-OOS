.class public final Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
.super Ljava/lang/Object;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticatorWrapper"
.end annotation


# instance fields
.field public final OEMStrength:I

.field public final id:I

.field public final impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

.field public final modality:I

.field private updatedStrength:I


# direct methods
.method constructor <init>(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "modality"    # I
    .param p3, "strength"    # I
    .param p4, "impl"    # Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    .line 419
    iput p2, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    .line 420
    iput p3, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    .line 421
    iput p3, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    .line 422
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 423
    return-void
.end method


# virtual methods
.method getActualStrength()I
    .locals 2

    .line 432
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    or-int/2addr v0, v1

    return v0
.end method

.method isDowngraded()Z
    .locals 2

    .line 436
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") OEMStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updatedStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " modality "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " authenticator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateStrength(I)V
    .locals 4
    .param p1, "newStrength"    # I

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStrength: Before("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "log":Ljava/lang/String;
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " After("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method
