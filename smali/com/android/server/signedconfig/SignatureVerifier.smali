.class public Lcom/android/server/signedconfig/SignatureVerifier;
.super Ljava/lang/Object;
.source "SignatureVerifier.java"


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_KEY:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmJKs4lSn+XRhMQmMid+Zbhbu13YrU1haIhVC5296InRu1x7A8PV1ejQyisBODGgRY6pqkAHRncBCYcgg5wIIJg=="

.field private static final PROD_KEY:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE+lky6wKyGL6lE1VrD0YTMHwb0Xwc+tzC8MvnrzVxodvTpVY/jV7V+Zktcx+pry43XPABFRXtbhTo+qykhyBA1g=="

.field private static final TAG:Ljava/lang/String; = "SignedConfig"


# instance fields
.field private final mDebugKey:Ljava/security/PublicKey;

.field private final mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

.field private final mProdKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lcom/android/server/signedconfig/SignedConfigEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 56
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmJKs4lSn+XRhMQmMid+Zbhbu13YrU1haIhVC5296InRu1x7A8PV1ejQyisBODGgRY6pqkAHRncBCYcgg5wIIJg=="

    invoke-static {v0}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    .line 57
    const-string v0, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE+lky6wKyGL6lE1VrD0YTMHwb0Xwc+tzC8MvnrzVxodvTpVY/jV7V+Zktcx+pry43XPABFRXtbhTo+qykhyBA1g=="

    invoke-static {v0}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    .line 58
    return-void
.end method

.method private static createKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "base64"    # Ljava/lang/String;

    .line 63
    const-string v0, "SignedConfig"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 64
    .local v2, "key":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 68
    .local v2, "keySpec":Ljava/security/spec/EncodedKeySpec;
    nop

    .line 70
    :try_start_1
    const-string v3, "EC"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 71
    .local v3, "factory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 72
    .end local v3    # "factory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string v4, "Failed to construct public key"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    return-object v1

    .line 65
    .end local v2    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Failed to base64 decode public key"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return-object v1
.end method

.method private verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z
    .locals 2
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 80
    const-string v0, "SHA256withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 81
    .local v0, "verifier":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 82
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 83
    invoke-virtual {v0, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "base64Signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 97
    const-string v0, "SignedConfig"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v2, "signature":[B
    nop

    .line 103
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 106
    .local v3, "data":[B
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 107
    iget-object v4, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    if-eqz v4, :cond_0

    .line 109
    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    const-string v1, "Verified config using debug key"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    iput v5, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 112
    return v5

    .line 117
    :cond_0
    const-string v4, "Debuggable build, but have no debug key"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    if-nez v4, :cond_2

    .line 121
    const-string v4, "No prod key; construction failed?"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/16 v4, 0x9

    iput v4, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 124
    return v1

    .line 126
    :cond_2
    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    const-string v1, "Verified config using production key"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 129
    return v5

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 v4, 0x7

    iput v4, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 133
    return v1

    .line 98
    .end local v2    # "signature":[B
    .end local v3    # "data":[B
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 100
    const-string v3, "Failed to base64 decode signature"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v1
.end method
