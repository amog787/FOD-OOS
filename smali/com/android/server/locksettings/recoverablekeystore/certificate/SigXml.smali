.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
.super Ljava/lang/Object;
.source "SigXml.java"


# static fields
.field private static final INTERMEDIATE_CERT_ITEM_TAG:Ljava/lang/String; = "cert"

.field private static final INTERMEDIATE_CERT_LIST_TAG:Ljava/lang/String; = "intermediates"

.field private static final SIGNATURE_NODE_TAG:Ljava/lang/String; = "value"

.field private static final SIGNER_CERT_NODE_TAG:Ljava/lang/String; = "certificate"


# instance fields
.field private final intermediateCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:[B

.field private final signerCert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/security/cert/X509Certificate;[B)V
    .locals 0
    .param p2, "signerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "[B)V"
        }
    .end annotation

    .line 47
    .local p1, "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->intermediateCerts:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    .line 50
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signature:[B

    .line 51
    return-void
.end method

.method public static parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
    .locals 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlRootNode([B)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 88
    .local v0, "rootNode":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    .line 89
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parseIntermediateCerts(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parseSignerCert(Lorg/w3c/dom/Element;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 90
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parseFileSignature(Lorg/w3c/dom/Element;)[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;-><init>(Ljava/util/List;Ljava/security/cert/X509Certificate;[B)V

    .line 88
    return-object v1
.end method

.method private static parseFileSignature(Lorg/w3c/dom/Element;)[B
    .locals 2
    .param p0, "rootNode"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 116
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 117
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private static parseIntermediateCerts(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 5
    .param p0, "rootNode"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 95
    const-string/jumbo v0, "intermediates"

    const-string v1, "cert"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    .local v3, "content":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v3    # "content":Ljava/lang/String;
    goto :goto_0

    .line 105
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static parseSignerCert(Lorg/w3c/dom/Element;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "rootNode"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 109
    const-string v0, "certificate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 110
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public verifyFileSignature(Ljava/security/cert/X509Certificate;[B)V
    .locals 1
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p2, "signedFileBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[BLjava/util/Date;)V

    .line 68
    return-void
.end method

.method verifyFileSignature(Ljava/security/cert/X509Certificate;[BLjava/util/Date;)V
    .locals 2
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p2, "signedFileBytes"    # [B
    .param p3, "validationDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->intermediateCerts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    invoke-static {p3, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 75
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signature:[B

    invoke-static {v0, v1, p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->verifyRsaSha256Signature(Ljava/security/PublicKey;[B[B)V

    .line 76
    return-void
.end method
