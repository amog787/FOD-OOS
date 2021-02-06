.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils$MustExist;
    }
.end annotation


# static fields
.field private static final CERT_FORMAT:Ljava/lang/String; = "X.509"

.field private static final CERT_PATH_ALG:Ljava/lang/String; = "PKIX"

.field private static final CERT_STORE_ALG:Ljava/lang/String; = "Collection"

.field static final MUST_EXIST_AT_LEAST_ONE:I = 0x2

.field static final MUST_EXIST_EXACTLY_ONE:I = 0x1

.field static final MUST_EXIST_UNENFORCED:I = 0x0

.field private static final SIGNATURE_ALG:Ljava/lang/String; = "SHA256withRSA"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildCertPath(Ljava/security/cert/PKIXParameters;)Ljava/security/cert/CertPath;
    .locals 3
    .param p0, "pkixParams"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 343
    :try_start_0
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    .local v0, "certPathBuilder":Ljava/security/cert/CertPathBuilder;
    nop

    .line 349
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 344
    .end local v0    # "certPathBuilder":Ljava/security/cert/CertPathBuilder;
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static buildPkixParams(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/PKIXParameters;
    .locals 6
    .param p0, "validationDate"    # Ljava/util/Date;
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p3, "leafCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/security/cert/PKIXParameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 363
    .local p2, "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 364
    .local v0, "trustedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    new-instance v1, Ljava/security/cert/TrustAnchor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :try_start_0
    const-string v2, "Collection"

    new-instance v3, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v3, v1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 372
    invoke-static {v2, v3}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    .local v2, "certStore":Ljava/security/cert/CertStore;
    nop

    .line 381
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 382
    .local v3, "certSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v3, p3}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 387
    :try_start_1
    new-instance v4, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v4, v0, v3}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    .local v4, "pkixParams":Ljava/security/cert/PKIXBuilderParameters;
    nop

    .line 391
    invoke-virtual {v4, v2}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 394
    invoke-virtual {v4, p0}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 395
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 397
    return-object v4

    .line 388
    .end local v4    # "pkixParams":Ljava/security/cert/PKIXBuilderParameters;
    :catch_0
    move-exception v4

    .line 389
    .local v4, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v5, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 376
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    .end local v3    # "certSelector":Ljava/security/cert/X509CertSelector;
    .end local v4    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v2

    .line 377
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 373
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_2
    move-exception v2

    .line 375
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static decodeCert(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 103
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 109
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 104
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static decodeCert([B)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p0, "certBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static getXmlDirectChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 212
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 213
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 214
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method static varargs getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "mustExist"    # I
    .param p1, "rootNode"    # Lorg/w3c/dom/Element;
    .param p2, "nodeTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/w3c/dom/Element;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 164
    array-length v0, p2

    if-eqz v0, :cond_9

    .line 171
    move-object v0, p1

    .line 172
    .local v0, "parent":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 173
    aget-object v2, p2, v1

    .line 174
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlDirectChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    if-nez p0, :cond_2

    .line 176
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_2

    .line 180
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 183
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    .line 172
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    :cond_2
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The XML file must contain exactly one path with the tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    .end local v1    # "i":I
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    :cond_3
    array-length v1, p2

    sub-int/2addr v1, v3

    aget-object v1, p2, v1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlDirectChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 188
    .local v1, "leafs":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    const-string v2, "/"

    if-ne p0, v3, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_4

    goto :goto_1

    .line 189
    :cond_4
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The XML file must contain exactly one node with the path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_5
    :goto_1
    const/4 v3, 0x2

    if-ne p0, v3, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 194
    :cond_6
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The XML file must contain at least one node with the path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_7
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 201
    .local v4, "leaf":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v4    # "leaf":Lorg/w3c/dom/Element;
    goto :goto_3

    .line 203
    :cond_8
    return-object v2

    .line 165
    .end local v0    # "parent":Lorg/w3c/dom/Element;
    .end local v1    # "leafs":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    const-string v1, "The tag list must not be empty"

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getXmlRootNode([B)Lorg/w3c/dom/Element;
    .locals 2
    .param p0, "xmlBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 125
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 127
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 128
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    .line 129
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 130
    .end local v0    # "document":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .locals 5
    .param p0, "validationDate"    # Ljava/util/Date;
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p3, "leafCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 284
    .local p2, "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    nop

    .line 285
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->buildPkixParams(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    .line 286
    .local v0, "pkixParams":Ljava/security/cert/PKIXParameters;
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->buildCertPath(Ljava/security/cert/PKIXParameters;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 290
    .local v1, "certPath":Ljava/security/cert/CertPath;
    :try_start_0
    const-string v2, "PKIX"

    invoke-static {v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    .local v2, "certPathValidator":Ljava/security/cert/CertPathValidator;
    nop

    .line 296
    :try_start_1
    invoke-virtual {v2, v1, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    nop

    .line 300
    return-object v1

    .line 297
    :catch_0
    move-exception v3

    .line 298
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 291
    .end local v2    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    .line 293
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static validateCertPath(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    .locals 1
    .param p0, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V

    .line 314
    return-void
.end method

.method static validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    .locals 4
    .param p0, "validationDate"    # Ljava/util/Date;
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 323
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 333
    .local v1, "leafCert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x1

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 336
    .local v2, "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {p0, p1, v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 337
    return-void

    .line 327
    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "leafCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_0
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string v1, "The given certificate path does not contain X509 certificates"

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string v1, "The given certificate path is empty"

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static verifyRsaSha256Signature(Ljava/security/PublicKey;[B[B)V
    .locals 3
    .param p0, "signerPublicKey"    # Ljava/security/PublicKey;
    .param p1, "signature"    # [B
    .param p2, "signedBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 249
    :try_start_0
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    .local v0, "verifier":Ljava/security/Signature;
    nop

    .line 255
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 256
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 257
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    nop

    .line 263
    return-void

    .line 258
    :cond_0
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string v2, "The signature is invalid"

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "verifier":Ljava/security/Signature;
    .end local p0    # "signerPublicKey":Ljava/security/PublicKey;
    .end local p1    # "signature":[B
    .end local p2    # "signedBytes":[B
    throw v1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    .restart local v0    # "verifier":Ljava/security/Signature;
    .restart local p0    # "signerPublicKey":Ljava/security/PublicKey;
    .restart local p1    # "signature":[B
    .restart local p2    # "signedBytes":[B
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 250
    .end local v0    # "verifier":Ljava/security/Signature;
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
