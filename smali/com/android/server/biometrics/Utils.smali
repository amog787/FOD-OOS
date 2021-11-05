.class public Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static biometricConstantsToBiometricManager(I)I
    .locals 2
    .param p0, "biometricConstantsCode"    # I

    .line 214
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

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x1

    .local v0, "biometricManagerCode":I
    goto :goto_0

    .line 229
    .end local v0    # "biometricManagerCode":I
    :cond_0
    const/16 v0, 0xf

    .line 230
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 226
    .end local v0    # "biometricManagerCode":I
    :cond_1
    const/16 v0, 0xc

    .line 227
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 220
    .end local v0    # "biometricManagerCode":I
    :cond_2
    const/16 v0, 0xb

    .line 221
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 223
    .end local v0    # "biometricManagerCode":I
    :cond_3
    const/4 v0, 0x1

    .line 224
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 216
    .end local v0    # "biometricManagerCode":I
    :cond_4
    const/4 v0, 0x0

    .line 217
    .restart local v0    # "biometricManagerCode":I
    nop

    .line 236
    :goto_0
    return v0
.end method

.method public static combineAuthenticatorBundles(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 61
    nop

    .line 62
    const-string v0, "allow_device_credential"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 63
    .local v2, "deviceCredentialAllowed":Z
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 66
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "authenticators":I
    goto :goto_1

    .line 71
    .end local v1    # "authenticators":I
    :cond_0
    if-eqz v2, :cond_1

    .line 72
    const v1, 0x80ff

    goto :goto_0

    .line 73
    :cond_1
    const/16 v1, 0xff

    :goto_0
    nop

    .line 76
    .restart local v1    # "authenticators":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public static getAuthenticationTypeForResult(I)I
    .locals 3
    .param p0, "reason"    # I

    .line 252
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    .line 254
    return v0

    .line 261
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

    .line 258
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public static getPublicBiometricStrength(I)I
    .locals 1
    .param p0, "authenticators"    # I

    .line 103
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getPublicBiometricStrength(Landroid/os/Bundle;)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 113
    nop

    .line 114
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 113
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v0

    return v0
.end method

.method public static isAtLeastStrength(II)Z
    .locals 4
    .param p0, "sensorStrength"    # I
    .param p1, "requestedStrength"    # I

    .line 134
    and-int/lit16 p0, p0, 0x7fff

    .line 137
    not-int v0, p1

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    return v1

    .line 141
    :cond_0
    const/4 v0, 0x1

    .line 142
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_2

    .line 143
    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    .line 144
    return v2

    .line 142
    :cond_1
    shl-int/lit8 v3, v0, 0x1

    or-int/lit8 v0, v3, 0x1

    goto :goto_0

    .line 148
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

    .line 150
    return v1
.end method

.method public static isBiometricRequested(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 124
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

    .line 84
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

    .line 92
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

    .line 39
    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_0

    .line 40
    return v0

    .line 43
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_1

    .line 44
    return v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometric_debug_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    .line 50
    return v0

    .line 52
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 266
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 269
    .local v0, "hasPermission":Z
    :goto_0
    nop

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040231

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 271
    .local v3, "keyguardComponent":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    .line 272
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 273
    .local v4, "keyguardPackage":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isValidAuthenticatorConfig(I)Z
    .locals 6
    .param p0, "authenticators"    # I

    .line 170
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 171
    return v0

    .line 176
    :cond_0
    const/high16 v1, -0x10000

    .line 178
    .local v1, "testBits":I
    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    const/4 v3, 0x0

    const-string v4, "BiometricService"

    if-eqz v2, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-biometric, non-credential bits found. Authenticators: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v3

    .line 186
    :cond_1
    and-int/lit16 v2, p0, 0x7fff

    .line 187
    .local v2, "biometricBits":I
    if-nez v2, :cond_2

    .line 188
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    return v0

    .line 190
    :cond_2
    const/16 v5, 0xf

    if-ne v2, v5, :cond_3

    .line 191
    return v0

    .line 192
    :cond_3
    const/16 v5, 0xff

    if-ne v2, v5, :cond_4

    .line 193
    return v0

    .line 196
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported biometric flags. Authenticators: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v3
.end method

.method public static isValidAuthenticatorConfig(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 159
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, "authenticators":I
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v1

    return v1
.end method
