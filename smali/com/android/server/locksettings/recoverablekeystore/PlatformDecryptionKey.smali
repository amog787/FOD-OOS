.class public Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
.super Ljava/lang/Object;
.source "PlatformDecryptionKey.java"


# instance fields
.field private final mGenerationId:I

.field private final mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;


# direct methods
.method public constructor <init>(ILandroid/security/keystore/AndroidKeyStoreSecretKey;)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "key"    # Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mGenerationId:I

    .line 45
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 46
    return-void
.end method


# virtual methods
.method public getGenerationId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mGenerationId:I

    return v0
.end method

.method public getKey()Landroid/security/keystore/AndroidKeyStoreSecretKey;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    return-object v0
.end method
