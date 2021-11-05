.class public interface abstract Lcom/android/server/biometrics/BiometricUtils;
.super Ljava/lang/Object;
.source "BiometricUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public abstract getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
.end method

.method public abstract removeBiometricForUser(Landroid/content/Context;II)V
.end method

.method public abstract renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
.end method
