.class public Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
.super Ljava/lang/Object;
.source "TestOnlyInsecureCertificateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestCertHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public doesCredentialSupportInsecureMode(I[B)Z
    .locals 5
    .param p1, "credentialType"    # I
    .param p2, "credential"    # [B

    .line 97
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 102
    return v0

    .line 104
    :cond_1
    nop

    .line 105
    const-string v1, "INSECURE_PSWD_"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 106
    .local v1, "insecurePasswordPrefixBytes":[B
    array-length v2, p2

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 107
    return v0

    .line 109
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 110
    aget-byte v3, p2, v2

    aget-byte v4, v1, v2

    if-eq v3, v4, :cond_3

    .line 111
    return v0

    .line 109
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const-string v0, "TestCertHelper"

    const-string/jumbo v1, "rootCertificateAlias is null or empty - use secure default value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string p1, "GoogleCloudKeyVaultServiceV1"

    .line 77
    :cond_1
    return-object p1
.end method

.method public getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getTestOnlyInsecureCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    nop

    .line 62
    invoke-static {p1}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 63
    .local v0, "rootCertificate":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1

    .line 67
    return-object v0

    .line 64
    :cond_1
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x1c

    const-string v3, "The provided root certificate alias is invalid"

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public isTestOnlyCertificateAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;

    .line 81
    nop

    .line 82
    const-string v0, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    return v0
.end method

.method public isValidRootCertificateAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 86
    :goto_1
    return v0
.end method

.method public keepOnlyWhitelistedInsecureKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;"
        }
    .end annotation

    .line 119
    .local p1, "rawKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "filteredKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 124
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, "alias":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 126
    const-string v4, "INSECURE_KEY_ALIAS_KEY_MATERIAL_IS_NOT_PROTECTED_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [B

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 127
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding key with insecure alias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to the recovery snapshot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TestCertHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    .end local v3    # "alias":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    return-object v0
.end method
