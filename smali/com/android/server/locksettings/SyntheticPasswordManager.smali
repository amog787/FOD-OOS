.class public Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    }
.end annotation


# static fields
.field public static final DEFAULT_HANDLE:J = 0x0L

.field private static final DEFAULT_PASSWORD:[B

.field protected static final HEX_ARRAY:[B

.field private static final INVALID_WEAVER_SLOT:I = -0x1

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_SALT_LENGTH:I = 0x10

.field private static final PASSWORD_SCRYPT_N:I = 0xb

.field private static final PASSWORD_SCRYPT_P:I = 0x1

.field private static final PASSWORD_SCRYPT_R:I = 0x3

.field private static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field private static final PERSONALISATION_CONTEXT:[B

.field private static final PERSONALISATION_SECDISCARDABLE:[B

.field private static final PERSONALISATION_WEAVER_KEY:[B

.field private static final PERSONALISATION_WEAVER_PASSWORD:[B

.field private static final PERSONALISATION_WEAVER_TOKEN:[B

.field private static final PERSONALIZATION_AUTHSECRET_KEY:[B

.field private static final PERSONALIZATION_E0:[B

.field private static final PERSONALIZATION_FBE_KEY:[B

.field private static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field private static final PERSONALIZATION_PASSWORD_HASH:[B

.field private static final PERSONALIZATION_SP_GK_AUTH:[B

.field private static final PERSONALIZATION_SP_SPLIT:[B

.field private static final PERSONALIZATION_USER_GK_AUTH:[B

.field private static final SECDISCARDABLE_LENGTH:I = 0x4000

.field private static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field private static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field private static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field private static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field private static final SYNTHETIC_PASSWORD_TOKEN_BASED:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_V2:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_V3:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field private static final WEAVER_SLOT_NAME:Ljava/lang/String; = "weaver"

.field private static final WEAVER_VERSION:B = 0x1t


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

.field private mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

.field private mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

.field private tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-string v0, "default-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 123
    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    .line 124
    const-string/jumbo v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 125
    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 126
    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 127
    const-string v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 128
    const-string v0, "authsecret-hal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 129
    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 130
    const-string/jumbo v0, "pw-hash"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 131
    const-string v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 132
    const-string/jumbo v0, "weaver-pwd"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    .line 133
    const-string/jumbo v0, "weaver-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    .line 134
    const-string/jumbo v0, "weaver-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    .line 135
    nop

    .line 136
    const-string v0, "android-synthetic-password-personalization-context"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    .line 1217
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;
    .param p3, "userManager"    # Landroid/os/UserManager;
    .param p4, "passwordSlotManager"    # Lcom/android/server/locksettings/PasswordSlotManager;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 299
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 300
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 301
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 302
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 303
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static synthetic access$200([B)[B
    .locals 1
    .param p0, "x0"    # [B

    .line 91
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    return-object v0
.end method

.method static synthetic access$600()[B
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    return-object v0
.end method

.method static synthetic access$700()[B
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static synthetic access$800()[B
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method private static bytesToHex([B)[B
    .locals 6
    .param p0, "bytes"    # [B

    .line 1219
    if-nez p0, :cond_0

    .line 1220
    const-string/jumbo v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 1222
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1223
    .local v0, "hexBytes":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1224
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 1225
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    ushr-int/lit8 v5, v2, 0x4

    aget-byte v5, v4, v5

    aput-byte v5, v0, v3

    .line 1226
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 1223
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1228
    .end local v1    # "j":I
    :cond_1
    return-object v0
.end method

.method private computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .locals 7
    .param p1, "password"    # [B
    .param p2, "data"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 1175
    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v1, 0x1

    shl-int v3, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v4, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v5, v1, v0

    const/16 v6, 0x20

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private createSecdiscardable(JI)[B
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1107
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v0

    .line 1108
    .local v0, "data":[B
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1109
    return-object v0
.end method

.method private createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .locals 11
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "applicationId"    # [B
    .param p6, "sid"    # J
    .param p8, "userId"    # I

    .line 831
    move v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 832
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->computeP0()[B

    move-result-object v2

    .local v2, "secret":[B
    goto :goto_0

    .line 834
    .end local v2    # "secret":[B
    :cond_0
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1100(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 836
    .restart local v2    # "secret":[B
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v5, v2

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v3

    .line 837
    .local v3, "content":[B
    array-length v4, v3

    add-int/2addr v4, v1

    add-int/2addr v4, v1

    new-array v4, v4, [B

    .line 843
    .local v4, "blob":[B
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1200(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne v5, v7, :cond_1

    .line 844
    aput-byte v7, v4, v8

    goto :goto_1

    .line 846
    :cond_1
    aput-byte v6, v4, v8

    .line 848
    :goto_1
    aput-byte v0, v4, v1

    .line 849
    array-length v1, v3

    invoke-static {v3, v8, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    const-string/jumbo v6, "spblob"

    move-object v5, p0

    move-object v7, v4

    move-wide v8, p1

    move/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 851
    return-void
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1133
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    .line 1134
    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1081
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1082
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 1083
    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 1086
    :cond_0
    return-void
.end method

.method private destroyWeaverSlot(JI)V
    .locals 6
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 562
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    .line 563
    .local v0, "slot":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 564
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    .line 566
    .local v1, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " for user "

    const-string v4, "SyntheticPasswordManager"

    if-nez v2, :cond_0

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroy weaver slot "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    .line 570
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v2, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotDeleted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to destroy slot"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 575
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip destroying reused weaver slot "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v1    # "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method private fakeUid(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 1158
    const v0, 0x186a0

    add-int/2addr v0, p1

    return v0
.end method

.method protected static fromByteArrayList(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 1210
    .local p0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1211
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1212
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1214
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static generateHandle()J
    .locals 5

    .line 1149
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1152
    .local v0, "rng":Ljava/security/SecureRandom;
    :goto_0
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1153
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1154
    return-wide v1

    .line 1153
    :cond_0
    goto :goto_0
.end method

.method private getHandleName(J)Ljava/lang/String;
    .locals 3
    .param p1, "handle"    # J

    .line 1171
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "synthetic_password_"

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextAvailableWeaverSlot()I
    .locals 3

    .line 604
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v0

    .line 605
    .local v0, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/PasswordSlotManager;->getUsedSlots()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 606
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge v1, v2, :cond_1

    .line 607
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    return v1

    .line 606
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Run out of weaver slots."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getUsedWeaverSlots()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "weaver"

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 593
    .local v0, "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 594
    .local v1, "slots":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 595
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 596
    .local v5, "handle":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v6

    .line 597
    .local v6, "slot":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 598
    .end local v5    # "handle":Ljava/lang/Long;
    .end local v6    # "slot":I
    goto :goto_1

    .line 599
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_0
    goto :goto_0

    .line 600
    :cond_1
    return-object v1
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private declared-synchronized isWeaverAvailable()Z
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 344
    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$weaverVerify$1([Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 4
    .param p0, "response"    # [Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "slot"    # I
    .param p2, "status"    # I
    .param p3, "readResponse"    # Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    .line 393
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    const-string v2, "SyntheticPasswordManager"

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 416
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read unknown status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 399
    :cond_0
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v3, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v1, p0, v0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    goto :goto_0

    .line 403
    :cond_1
    iget v1, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-nez v1, :cond_2

    .line 404
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_2
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v3, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v1, p0, v0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    goto :goto_0

    .line 412
    :cond_3
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (FAILED), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    goto :goto_0

    .line 395
    :cond_4
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 396
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    aput-object v1, p0, v0

    .line 397
    nop

    .line 420
    :goto_0
    return-void
.end method

.method private loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .locals 3
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 518
    const-wide/16 v0, 0x0

    const-string v2, "e0"

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$902(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B

    .line 519
    const-string/jumbo v2, "p1"

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1002(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B

    .line 520
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1000(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadSecdiscardable(JI)[B
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1117
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadState(Ljava/lang/String;JI)[B
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1125
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .locals 3
    .param p1, "userId"    # I

    .line 510
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadWeaverSlot(JI)I
    .locals 6
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 539
    const/4 v0, 0x5

    .line 540
    .local v0, "LENGTH":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 541
    .local v1, "data":[B
    const/4 v2, -0x1

    if-eqz v1, :cond_2

    array-length v3, v1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 545
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 546
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 547
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid weaver slot version of handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyntheticPasswordManager"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v2

    .line 551
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    return v2

    .line 542
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    return v2
.end method

.method private passwordTokenToGkInput([B)[B
    .locals 3
    .param p1, "token"    # [B

    .line 1180
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private passwordTokenToWeaverKey([B)[B
    .locals 3
    .param p1, "token"    # [B

    .line 1184
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1185
    .local v0, "key":[B
    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-lt v1, v2, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 1186
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "weaver key length too small"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 11
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 524
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v2

    const-string v1, "e0"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 525
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1000(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v7

    const-string/jumbo v6, "p1"

    const-wide/16 v8, 0x0

    move-object v5, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 526
    return-void
.end method

.method private saveSecdiscardable(J[BI)V
    .locals 6
    .param p1, "handle"    # J
    .param p3, "secdiscardable"    # [B
    .param p4, "userId"    # I

    .line 1113
    const-string/jumbo v1, "secdis"

    move-object v0, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1114
    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .locals 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .line 1129
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    .line 1130
    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .locals 6
    .param p1, "spHandle"    # [B
    .param p2, "userId"    # I

    .line 514
    const-string v1, "handle"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 515
    return-void
.end method

.method private saveWeaverSlot(IJI)V
    .locals 8
    .param p1, "slot"    # I
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 555
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 556
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 557
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string/jumbo v3, "weaver"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 559
    return-void
.end method

.method protected static secureRandom(I)[B
    .locals 2
    .param p0, "length"    # I

    .line 1163
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1166
    const/4 v1, 0x0

    return-object v1
.end method

.method private synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .locals 3
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I

    .line 724
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 726
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 725
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x1

    .line 729
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 728
    invoke-virtual {v0, v1, p3, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 734
    :cond_1
    :goto_0
    return-void
.end method

.method private synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .locals 3
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I
    .param p4, "weaverSlot"    # I

    .line 738
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 740
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 739
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x2

    .line 743
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 742
    invoke-virtual {v0, v1, p4, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 748
    :cond_1
    :goto_0
    return-void
.end method

.method protected static toByteArrayList([B)Ljava/util/ArrayList;
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1202
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1203
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1204
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1206
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "rawSecdiscardable"    # [B

    .line 1098
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1100
    .local v0, "secdiscardable":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1101
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    return-object v1
.end method

.method private transformUnderWeaverSecret([B[B)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "secret"    # [B

    .line 1089
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1091
    .local v0, "weaverSecret":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1092
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1094
    return-object v1
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 19
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "applicationId"    # [B
    .param p5, "sid"    # J
    .param p7, "userId"    # I

    .line 980
    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p7

    const-string/jumbo v0, "spblob"

    move-wide/from16 v13, p1

    invoke-direct {v9, v0, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v15

    .line 981
    .local v15, "blob":[B
    const/4 v0, 0x0

    if-nez v15, :cond_0

    .line 982
    return-object v0

    .line 984
    :cond_0
    const/4 v1, 0x0

    aget-byte v8, v15, v1

    .line 985
    .local v8, "version":B
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v8, v1, :cond_2

    if-eq v8, v2, :cond_2

    if-ne v8, v3, :cond_1

    goto :goto_0

    .line 988
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_2
    :goto_0
    aget-byte v1, v15, v3

    if-ne v1, v10, :cond_8

    .line 994
    if-ne v8, v3, :cond_3

    .line 995
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v4, v15

    .line 996
    invoke-static {v15, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 995
    invoke-static {v1, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v1

    move-object v6, v1

    .local v1, "secret":[B
    goto :goto_1

    .line 998
    .end local v1    # "secret":[B
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v4, v15

    .line 999
    invoke-static {v15, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 998
    invoke-virtual {v9, v1, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v1

    move-object v6, v1

    .line 1001
    .local v6, "secret":[B
    :goto_1
    const-string v1, "SyntheticPasswordManager"

    if-nez v6, :cond_4

    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to decrypt SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-object v0

    .line 1005
    :cond_4
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v2, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    move-object v7, v2

    .line 1006
    .local v7, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-ne v10, v3, :cond_6

    .line 1007
    invoke-direct {v9, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not escrowable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-object v0

    .line 1011
    :cond_5
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    goto :goto_2

    .line 1013
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1102(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    :goto_2
    if-ne v8, v3, :cond_7

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade v1 SP blob for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object v4, v7

    move-object/from16 v5, p4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v16, "secret":[B
    .local v17, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    move-wide/from16 v6, p5

    move/from16 v18, v8

    .end local v8    # "version":B
    .local v18, "version":B
    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    goto :goto_3

    .line 1015
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "version":B
    .restart local v6    # "secret":[B
    .restart local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v8    # "version":B
    :cond_7
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    .line 1019
    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v8    # "version":B
    .restart local v16    # "secret":[B
    .restart local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v18    # "version":B
    :goto_3
    return-object v17

    .line 991
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "version":B
    .restart local v8    # "version":B
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private weaverEnroll(I[B[B)[B
    .locals 3
    .param p1, "slot"    # I
    .param p2, "key"    # [B
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_4

    .line 360
    if-nez p2, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v0, [B

    goto :goto_0

    .line 362
    :cond_0
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_3

    .line 365
    :goto_0
    if-nez p3, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p3

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 369
    .local v0, "writeStatus":I
    if-eqz v0, :cond_2

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver write failed, slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    return-object v1

    .line 373
    :cond_2
    return-object p3

    .line 363
    .end local v0    # "writeStatus":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid key size for weaver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid slot for weaver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4
    .param p1, "slot"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_2

    .line 386
    if-nez p2, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v0, [B

    goto :goto_0

    .line 388
    :cond_0
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_1

    .line 391
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 392
    .local v0, "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;

    invoke-direct {v3, v0, p1}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;-><init>([Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-interface {v1, p1, v2, v3}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    .line 421
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 389
    .end local v0    # "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid key size for weaver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid slot for weaver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .locals 11
    .param p1, "handle"    # J
    .param p3, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .line 795
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 796
    return v1

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    .line 799
    .local v0, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    if-nez v0, :cond_1

    .line 800
    return v1

    .line 802
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    const-string v3, "SyntheticPasswordManager"

    if-nez v2, :cond_2

    .line 803
    const-string v2, "User is not escrowable"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v1

    .line 806
    :cond_2
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 807
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v2

    .line 809
    .local v2, "slot":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weaver enroll token to slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    nop

    .line 815
    invoke-direct {p0, v2, p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 816
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    goto :goto_0

    .line 811
    :catch_0
    move-exception v4

    .line 812
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to enroll weaver secret when activating token"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    return v1

    .line 818
    .end local v2    # "slot":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 819
    const/4 v5, 0x1

    iget-object v7, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 821
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    if-eqz v1, :cond_4

    .line 823
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    invoke-interface {v1, p1, p2, p4}, Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;->onEscrowTokenActivated(JI)V

    .line 825
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public clearSidForUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 499
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 500
    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .locals 22
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "credential"    # [B
    .param p3, "credentialType"    # I
    .param p4, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "requestedQuality"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p5

    move/from16 v12, p6

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    move/from16 v1, p3

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v14, p2

    move v13, v1

    goto :goto_1

    :cond_1
    move/from16 v1, p3

    .line 631
    :goto_0
    const/4 v0, -0x1

    .line 632
    .end local p3    # "credentialType":I
    .local v0, "credentialType":I
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    move v13, v0

    move-object v14, v1

    .line 635
    .end local v0    # "credentialType":I
    .end local p2    # "credential":[B
    .local v13, "credentialType":I
    .local v14, "credential":[B
    :goto_1
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v6

    .line 636
    .local v6, "handle":J
    invoke-static {v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v15

    .line 637
    .local v15, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {v9, v14, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v8

    .line 641
    .local v8, "pwdToken":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    const-string v3, "SyntheticPasswordManager"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 643
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v0

    .line 644
    .local v0, "weaverSlot":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weaver enroll password to slot "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v1

    invoke-direct {v9, v0, v1, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v1

    .line 646
    .local v1, "weaverSecret":[B
    if-nez v1, :cond_2

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to enroll user password under weaver "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-wide/16 v2, 0x0

    return-wide v2

    .line 650
    :cond_2
    invoke-direct {v9, v0, v6, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 651
    iget-object v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v2, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 652
    invoke-direct {v9, v15, v11, v12, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 654
    iput-object v4, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 655
    const-wide/16 v2, 0x0

    .line 656
    .local v2, "sid":J
    invoke-direct {v9, v8, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v0

    .line 657
    .end local v1    # "weaverSecret":[B
    .local v0, "applicationId":[B
    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    goto :goto_2

    .line 660
    .end local v0    # "applicationId":[B
    .end local v2    # "sid":J
    :cond_3
    invoke-direct {v9, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 662
    invoke-direct {v9, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    .line 663
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v1

    .line 662
    invoke-interface {v10, v0, v4, v4, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 664
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_4

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-wide/16 v1, 0x0

    return-wide v1

    .line 668
    :cond_4
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 669
    iget-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v9, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v1

    .line 670
    .local v1, "sid":J
    nop

    .line 671
    invoke-direct {v9, v6, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v3

    .line 670
    invoke-direct {v9, v8, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v3

    .line 672
    .local v3, "applicationId":[B
    invoke-direct {v9, v15, v11, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    move-wide/from16 v17, v1

    move-object/from16 v16, v3

    .line 674
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v1    # "sid":J
    .end local v3    # "applicationId":[B
    .local v16, "applicationId":[B
    .local v17, "sid":J
    :goto_2
    invoke-virtual {v15}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    const-string/jumbo v1, "pwd"

    move-object/from16 v0, p0

    move-wide v3, v6

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 676
    const/4 v3, 0x0

    move-wide v1, v6

    move-object/from16 v4, p4

    move-object/from16 v5, v16

    move-wide/from16 v19, v6

    .end local v6    # "handle":J
    .local v19, "handle":J
    move-wide/from16 v6, v17

    move-object/from16 v21, v8

    .end local v8    # "pwdToken":[B
    .local v21, "pwdToken":[B
    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 678
    return-wide v19
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .locals 1
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "sid"    # J

    .line 1141
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 6
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "changeCallback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 758
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v0

    .line 759
    .local v0, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 760
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_0
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    invoke-direct {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    .line 763
    .local v2, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    .line 764
    .local v3, "secdiscardable":[B
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 765
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 766
    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v4, v5, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    goto :goto_0

    .line 769
    :cond_1
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 770
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 772
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 773
    iput-object p3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 775
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    return-wide v0
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .locals 1
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B

    .line 1137
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroyEscrowData(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 534
    const-wide/16 v0, 0x0

    const-string v2, "e0"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 535
    const-string/jumbo v2, "p1"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 536
    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1075
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1076
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1077
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1078
    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 1145
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1070
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1071
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1072
    return-void
.end method

.method public existsHandle(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1066
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public getCredentialType(JI)I
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 432
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 433
    .local v0, "passwordData":[B
    if-nez v0, :cond_0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCredentialType: encountered empty password data for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, -0x1

    return v1

    .line 437
    :cond_0
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    return v1
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-static {}, Landroid/hardware/weaver/V1_0/IWeaver;->getService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Device does not support weaver"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasEscrowData(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 529
    const-wide/16 v0, 0x0

    const-string v2, "e0"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    const-string/jumbo v2, "p1"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 529
    :goto_0
    return v0
.end method

.method public hasSidForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 503
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initWeaverService()V
    .locals 3

    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 317
    monitor-exit p0

    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 321
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 322
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    invoke-interface {v0, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    :cond_1
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Failed to get weaver service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$initWeaverService$0$SyntheticPasswordManager(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "config"    # Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 324
    if-nez p1, :cond_0

    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lez v0, :cond_0

    .line 325
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    goto :goto_0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get weaver config, status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slots: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 331
    :goto_0
    return-void
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p4, "requestedQuality"    # I

    .line 707
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 708
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget v0, p3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 711
    .local v0, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 712
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v1

    .line 713
    .local v1, "weaverSlot":I
    if-eq v1, v2, :cond_0

    .line 714
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    goto :goto_0

    .line 716
    :cond_0
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 720
    .end local v0    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v1    # "weaverSlot":I
    :cond_1
    :goto_0
    return-void
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 3
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    nop

    .line 489
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    .line 488
    const/4 v1, 0x0

    invoke-interface {p1, p3, v1, v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 490
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to create new SID for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 494
    :cond_0
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 495
    return-void
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[B[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 4
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "hash"    # [B
    .param p3, "credential"    # [B
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 466
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-eqz p2, :cond_1

    .line 467
    nop

    .line 468
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v1

    .line 467
    invoke-interface {p1, p4, p2, p3, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .line 469
    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyntheticPasswordManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_0

    .line 476
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 478
    :goto_0
    invoke-direct {p0, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 479
    return-object v0
.end method

.method public removePendingToken(JI)Z
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 787
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 788
    return v1

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 425
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 426
    .local v1, "handle":J
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 427
    invoke-direct {p0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 428
    .end local v1    # "handle":J
    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method

.method protected scrypt([B[BIIII)[B
    .locals 7
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "n"    # I
    .param p4, "r"    # I
    .param p5, "p"    # I
    .param p6, "outLen"    # I

    .line 1196
    new-instance v0, Landroid/security/Scrypt;

    invoke-direct {v0}, Landroid/security/Scrypt;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected sidFromPasswordHandle([B)J
    .locals 2
    .param p1, "handle"    # [B

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .locals 23
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "credential"    # [B
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    move/from16 v11, p5

    if-nez p4, :cond_0

    .line 864
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    move-object v12, v0

    .end local p4    # "credential":[B
    .local v0, "credential":[B
    goto :goto_0

    .line 863
    .end local v0    # "credential":[B
    .restart local p4    # "credential":[B
    :cond_0
    move-object/from16 v12, p4

    .line 866
    .end local p4    # "credential":[B
    .local v12, "credential":[B
    :goto_0
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v13, v0

    .line 867
    .local v13, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    const-string/jumbo v0, "pwd"

    invoke-direct {v8, v0, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v14

    .line 868
    .local v14, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    iput v0, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I

    .line 869
    invoke-direct {v8, v12, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v15

    .line 873
    .local v15, "pwdToken":[B
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v7

    .line 874
    .local v7, "weaverSlot":I
    const/4 v0, -0x1

    const-string v1, "SyntheticPasswordManager"

    if-eq v7, v0, :cond_3

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 877
    const-string v0, "No weaver service to unwrap password based SP"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 879
    return-object v13

    .line 881
    :cond_1
    invoke-direct {v8, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v0

    invoke-direct {v8, v7, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 882
    iget-object v0, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    return-object v13

    .line 885
    :cond_2
    const-wide/16 v0, 0x0

    .line 886
    .local v0, "sid":J
    iget-object v2, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {v8, v15, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v2

    move-wide/from16 v17, v0

    move-object/from16 v16, v2

    .local v2, "applicationId":[B
    goto/16 :goto_4

    .line 888
    .end local v0    # "sid":J
    .end local v2    # "applicationId":[B
    :cond_3
    invoke-direct {v8, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v6

    .line 889
    .local v6, "gkPwdToken":[B
    invoke-direct {v8, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v17

    const-wide/16 v18, 0x0

    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v16, p1

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    invoke-interface/range {v16 .. v21}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v16

    .line 891
    .local v16, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {v16 .. v16}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v5

    .line 892
    .local v5, "responseCode":I
    const/4 v3, 0x1

    if-nez v5, :cond_8

    .line 893
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 894
    invoke-virtual/range {v16 .. v16}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 895
    invoke-direct {v8, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    iget-object v2, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v4, p1

    invoke-interface {v4, v0, v2, v6, v6}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v17

    .line 897
    .local v17, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {v17 .. v17}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_5

    .line 898
    invoke-virtual/range {v17 .. v17}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 899
    invoke-virtual {v14}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    const-string/jumbo v1, "pwd"

    move-object/from16 v0, p0

    move-object/from16 p4, v6

    move v6, v3

    .end local v6    # "gkPwdToken":[B
    .local p4, "gkPwdToken":[B
    move-wide/from16 v3, p2

    move/from16 v22, v5

    .end local v5    # "responseCode":I
    .local v22, "responseCode":I
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 900
    nop

    .line 901
    iget v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    if-ne v0, v6, :cond_4

    .line 902
    const/high16 v0, 0x10000

    goto :goto_1

    .line 903
    :cond_4
    const/high16 v0, 0x50000

    .line 900
    :goto_1
    invoke-direct {v8, v14, v0, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_2

    .line 907
    .end local v22    # "responseCode":I
    .end local p4    # "gkPwdToken":[B
    .restart local v5    # "responseCode":I
    .restart local v6    # "gkPwdToken":[B
    :cond_5
    move/from16 v22, v5

    move-object/from16 p4, v6

    .end local v5    # "responseCode":I
    .end local v6    # "gkPwdToken":[B
    .restart local v22    # "responseCode":I
    .restart local p4    # "gkPwdToken":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to re-enroll user password for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    .end local v17    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_2
    goto :goto_3

    .line 894
    .end local v22    # "responseCode":I
    .end local p4    # "gkPwdToken":[B
    .restart local v5    # "responseCode":I
    .restart local v6    # "gkPwdToken":[B
    :cond_6
    move/from16 v22, v5

    move-object/from16 p4, v6

    .line 918
    .end local v5    # "responseCode":I
    .end local v6    # "gkPwdToken":[B
    .restart local v22    # "responseCode":I
    .restart local p4    # "gkPwdToken":[B
    :goto_3
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v8, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v0

    .line 919
    .restart local v0    # "sid":J
    nop

    .line 920
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v2

    .line 919
    invoke-direct {v8, v15, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v2

    move-wide/from16 v17, v0

    move-object/from16 v16, v2

    .line 924
    .end local v0    # "sid":J
    .end local v22    # "responseCode":I
    .end local p4    # "gkPwdToken":[B
    .local v16, "applicationId":[B
    .local v17, "sid":J
    :goto_4
    if-eqz p6, :cond_7

    .line 925
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    .line 927
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v4, v16

    move-wide/from16 v5, v17

    move/from16 v19, v7

    .end local v7    # "weaverSlot":I
    .local v19, "weaverSlot":I
    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 931
    iget-object v2, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 932
    return-object v13

    .line 911
    .end local v17    # "sid":J
    .end local v19    # "weaverSlot":I
    .restart local v5    # "responseCode":I
    .restart local v6    # "gkPwdToken":[B
    .restart local v7    # "weaverSlot":I
    .local v16, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_8
    move/from16 v22, v5

    move-object/from16 p4, v6

    move/from16 v19, v7

    move v6, v3

    .end local v5    # "responseCode":I
    .end local v6    # "gkPwdToken":[B
    .end local v7    # "weaverSlot":I
    .restart local v19    # "weaverSlot":I
    .restart local v22    # "responseCode":I
    .restart local p4    # "gkPwdToken":[B
    move/from16 v0, v22

    .end local v22    # "responseCode":I
    .local v0, "responseCode":I
    if-ne v0, v6, :cond_9

    .line 912
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual/range {v16 .. v16}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    iput-object v1, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 913
    return-object v13

    .line 915
    :cond_9
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 916
    return-object v13
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .locals 17
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 943
    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    move/from16 v11, p5

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v12, v0

    .line 944
    .local v12, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    .line 945
    .local v0, "secdiscardable":[B
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v13

    .line 946
    .local v13, "slotId":I
    const/4 v1, -0x1

    if-eq v13, v1, :cond_3

    .line 947
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    const-string v2, "SyntheticPasswordManager"

    if-nez v1, :cond_0

    .line 948
    const-string v1, "No weaver service to unwrap token based SP"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 950
    return-object v12

    .line 952
    :cond_0
    const/4 v1, 0x0

    invoke-direct {v8, v13, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 953
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 954
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 959
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v2, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    .line 955
    :cond_2
    :goto_0
    const-string v3, "Failed to retrieve weaver secret when unwrapping token"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 957
    return-object v12

    .line 946
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_3
    move-object v14, v0

    .line 962
    .end local v0    # "secdiscardable":[B
    .local v14, "secdiscardable":[B
    :goto_1
    move-object/from16 v15, p4

    invoke-direct {v8, v15, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v16

    .line 963
    .local v16, "applicationId":[B
    const/4 v3, 0x1

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v4, v16

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 965
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_4

    .line 966
    iget-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 967
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v0, :cond_5

    .line 970
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2

    .line 973
    :cond_4
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 975
    :cond_5
    :goto_2
    return-object v12
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v6

    .line 1033
    .local v6, "spHandle":[B
    if-nez v6, :cond_0

    .line 1036
    const/4 v0, 0x0

    return-object v0

    .line 1039
    :cond_0
    nop

    .line 1040
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v5

    .line 1039
    move-object v0, p1

    move v1, p5

    move-wide v2, p3

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1041
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    .line 1042
    .local v1, "responseCode":I
    if-nez v1, :cond_2

    .line 1043
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .line 1044
    .local v2, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1045
    nop

    .line 1046
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    .line 1045
    invoke-interface {p1, p5, v6, v6, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 1048
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v3

    .line 1049
    .end local v6    # "spHandle":[B
    .local v3, "spHandle":[B
    invoke-direct {p0, v3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 1051
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 1053
    .end local v3    # "spHandle":[B
    .restart local v6    # "spHandle":[B
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to re-enroll SP handle for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SyntheticPasswordManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1057
    .end local v2    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1058
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local v2    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 1060
    .end local v2    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_3
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1062
    .restart local v2    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_4
    :goto_0
    return-object v2
.end method

.method public verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "userCredential"    # [B
    .param p3, "credentialType"    # I
    .param p4, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    .line 685
    .local v0, "persistentData":Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 686
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    .line 687
    .local v1, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {p0, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v2

    .line 689
    .local v2, "pwdToken":[B
    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    const-wide/16 v6, 0x0

    iget-object v8, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 690
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v9

    .line 689
    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v3

    .line 691
    .local v3, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-static {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 692
    .end local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v2    # "pwdToken":[B
    .end local v3    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 693
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    .line 694
    .restart local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {p0, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v2

    .line 695
    .restart local v2    # "pwdToken":[B
    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 697
    .local v3, "weaverSlot":I
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 699
    .end local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v2    # "pwdToken":[B
    .end local v3    # "weaverSlot":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persistentData.type must be TYPE_SP or TYPE_SP_WEAVER, but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method
