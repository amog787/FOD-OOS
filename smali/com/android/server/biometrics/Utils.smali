.class public Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static biometricConstantsToBiometricManager(I)I
    .locals 2
    .param p0, "biometricConstantsCode"    # I

    .line 209
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_2

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x1

    .local v0, "biometricManagerCode":I
    goto :goto_0

    .line 224
    .end local v0    # "biometricManagerCode":I
    :cond_0
    const/16 v0, 0xf

    .line 225
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 221
    .end local v0    # "biometricManagerCode":I
    :cond_1
    const/16 v0, 0xc

    .line 222
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 215
    .end local v0    # "biometricManagerCode":I
    :cond_2
    const/16 v0, 0xb

    .line 216
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 218
    .end local v0    # "biometricManagerCode":I
    :cond_3
    const/4 v0, 0x1

    .line 219
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 211
    .end local v0    # "biometricManagerCode":I
    :cond_4
    const/4 v0, 0x0

    .line 212
    .restart local v0    # "biometricManagerCode":I
    nop

    .line 231
    :goto_0
    return v0
.end method

.method public static combineAuthenticatorBundles(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 56
    nop

    .line 57
    const-string v0, "allow_device_credential"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 58
    .local v2, "deviceCredentialAllowed":Z
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 61
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "authenticators":I
    goto :goto_1

    .line 66
    .end local v1    # "authenticators":I
    :cond_0
    if-eqz v2, :cond_1

    .line 67
    const v1, 0x80ff

    goto :goto_0

    .line 68
    :cond_1
    const/16 v1, 0xff

    :goto_0
    nop

    .line 71
    .restart local v1    # "authenticators":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public static getAuthenticationTypeForResult(I)I
    .locals 3
    .param p0, "reason"    # I

    .line 247
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    .line 249
    return v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dismissal reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public static getPublicBiometricStrength(I)I
    .locals 1
    .param p0, "authenticators"    # I

    .line 98
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getPublicBiometricStrength(Landroid/os/Bundle;)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 108
    nop

    .line 109
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v0

    return v0
.end method

.method public static isAtLeastStrength(II)Z
    .locals 4
    .param p0, "sensorStrength"    # I
    .param p1, "requestedStrength"    # I

    .line 129
    and-int/lit16 p0, p0, 0x7fff

    .line 132
    not-int v0, p1

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    return v1

    .line 136
    :cond_0
    const/4 v0, 0x1

    .line 137
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_2

    .line 138
    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    .line 139
    return v2

    .line 137
    :cond_1
    shl-int/lit8 v3, v0, 0x1

    or-int/lit8 v0, v3, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sensorStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestedStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v1
.end method

.method public static isBiometricRequested(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 119
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCredentialRequested(I)Z
    .locals 1
    .param p0, "authenticators"    # I

    .line 79
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCredentialRequested(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 87
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v0

    return v0
.end method

.method public static isDebugEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetUserId"    # I

    .line 34
    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_0

    .line 35
    return v0

    .line 38
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_1

    .line 39
    return v0

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometric_debug_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    .line 45
    return v0

    .line 47
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidAuthenticatorConfig(I)Z
    .locals 6
    .param p0, "authenticators"    # I

    .line 165
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 166
    return v0

    .line 171
    :cond_0
    const/high16 v1, -0x10000

    .line 173
    .local v1, "testBits":I
    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    const/4 v3, 0x0

    const-string v4, "BiometricService"

    if-eqz v2, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-biometric, non-credential bits found. Authenticators: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v3

    .line 181
    :cond_1
    and-int/lit16 v2, p0, 0x7fff

    .line 182
    .local v2, "biometricBits":I
    if-nez v2, :cond_2

    .line 183
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    return v0

    .line 185
    :cond_2
    const/16 v5, 0xf

    if-ne v2, v5, :cond_3

    .line 186
    return v0

    .line 187
    :cond_3
    const/16 v5, 0xff

    if-ne v2, v5, :cond_4

    .line 188
    return v0

    .line 191
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported biometric flags. Authenticators: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v3
.end method

.method public static isValidAuthenticatorConfig(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 154
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "authenticators":I
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v1

    return v1
.end method
