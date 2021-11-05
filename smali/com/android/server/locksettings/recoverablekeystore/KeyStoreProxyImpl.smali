.class public Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;
.super Ljava/lang/Object;
.source "KeyStoreProxyImpl.java"

# interfaces
.implements Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;


# static fields
.field private static final ANDROID_KEY_STORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 41
    return-void
.end method

.method public static getAndLoadAndroidKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 72
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 74
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Unable to load keystore."

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public containsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 58
    return-void
.end method
