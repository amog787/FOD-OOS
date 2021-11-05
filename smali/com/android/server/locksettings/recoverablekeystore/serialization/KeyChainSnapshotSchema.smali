.class Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;
.super Ljava/lang/Object;
.source "KeyChainSnapshotSchema.java"


# static fields
.field static final CERTIFICATE_FACTORY_TYPE:Ljava/lang/String; = "X.509"

.field static final CERT_PATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field static final NAMESPACE:Ljava/lang/String;

.field static final OUTPUT_ENCODING:Ljava/lang/String; = "UTF-8"

.field static final TAG_ALGORITHM:Ljava/lang/String; = "algorithm"

.field static final TAG_ALIAS:Ljava/lang/String; = "alias"

.field static final TAG_APPLICATION_KEY:Ljava/lang/String; = "applicationKey"

.field static final TAG_APPLICATION_KEYS:Ljava/lang/String; = "applicationKeysList"

.field static final TAG_BACKEND_PUBLIC_KEY:Ljava/lang/String; = "backendPublicKey"

.field static final TAG_COUNTER_ID:Ljava/lang/String; = "counterId"

.field static final TAG_KEY_CHAIN_PROTECTION_PARAMS:Ljava/lang/String; = "keyChainProtectionParams"

.field static final TAG_KEY_CHAIN_PROTECTION_PARAMS_LIST:Ljava/lang/String; = "keyChainProtectionParamsList"

.field static final TAG_KEY_CHAIN_SNAPSHOT:Ljava/lang/String; = "keyChainSnapshot"

.field static final TAG_KEY_DERIVATION_PARAMS:Ljava/lang/String; = "keyDerivationParams"

.field static final TAG_KEY_MATERIAL:Ljava/lang/String; = "keyMaterial"

.field static final TAG_KEY_METADATA:Ljava/lang/String; = "keyMetadata"

.field static final TAG_LOCK_SCREEN_UI_TYPE:Ljava/lang/String; = "lockScreenUiType"

.field static final TAG_MAX_ATTEMPTS:Ljava/lang/String; = "maxAttempts"

.field static final TAG_MEMORY_DIFFICULTY:Ljava/lang/String; = "memoryDifficulty"

.field static final TAG_RECOVERY_KEY_MATERIAL:Ljava/lang/String; = "recoveryKeyMaterial"

.field static final TAG_SALT:Ljava/lang/String; = "salt"

.field static final TAG_SERVER_PARAMS:Ljava/lang/String; = "serverParams"

.field static final TAG_SNAPSHOT_VERSION:Ljava/lang/String; = "snapshotVersion"

.field static final TAG_TRUSTED_HARDWARE_CERT_PATH:Ljava/lang/String; = "thmCertPath"

.field static final TAG_USER_SECRET_TYPE:Ljava/lang/String; = "userSecretType"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
