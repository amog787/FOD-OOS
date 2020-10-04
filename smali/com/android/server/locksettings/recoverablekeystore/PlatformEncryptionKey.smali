.class public Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
.super Ljava/lang/Object;
.source "PlatformEncryptionKey.java"


# instance fields
.field private final mGenerationId:I

.field private final mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;


# direct methods
.method public constructor <init>(ILandroid/security/keystore/AndroidKeyStoreSecretKey;)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "key"    # Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->mGenerationId:I

    .line 46
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 47
    return-void
.end method


# virtual methods
.method public getGenerationId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->mGenerationId:I

    return v0
.end method

.method public getKey()Landroid/security/keystore/AndroidKeyStoreSecretKey;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    return-object v0
.end method
