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

.field private static final PARAM_CREATE_PROPERTY:Ljava/lang/String; = "vendor.oem.enroll.index"

.field private static final PARAM_FAIL_PROPERTY:Ljava/lang/String; = "vendor.oem.verify.fail.index"

.field private static final PARAM_INDEX_TIME_CREATE_KEY:I = 0xc

.field private static final PARAM_INDEX_TIME_FAIL_KEY:I = 0xe

.field private static final PARAM_INDEX_TIME_PASS_KEY:I = 0xd

.field private static final PARAM_PASS_PROPERTY:Ljava/lang/String; = "vendor.oem.verify.pass.index"

.field private static final PARAM_TIME_CREATE_KEY_1:I = 0xd

.field private static final PARAM_TIME_CREATE_KEY_2:I = 0xe

.field private static final PARAM_TIME_CREATE_KEY_3:I = 0xf

.field private static final PARAM_TIME_CREATE_KEY_4:I = 0x10

.field private static final PARAM_TIME_FAIL_KEY_1:I = 0x15

.field private static final PARAM_TIME_FAIL_KEY_2:I = 0x16

.field private static final PARAM_TIME_FAIL_KEY_3:I = 0x17

.field private static final PARAM_TIME_FAIL_KEY_4:I = 0x18

.field private static final PARAM_TIME_PASS_KEY_1:I = 0x11

.field private static final PARAM_TIME_PASS_KEY_2:I = 0x12

.field private static final PARAM_TIME_PASS_KEY_3:I = 0x13

.field private static final PARAM_TIME_PASS_KEY_4:I = 0x14

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_METRICS_NAME:Ljava/lang/String; = "metrics"

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

.field private static final PERSONALIZATION_PASSWORD_METRICS:[B

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

.field private static mIOneplusParam:Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;


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

    .line 115
    const-string v0, "default-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 136
    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    .line 137
    const-string/jumbo v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 138
    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 139
    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 140
    const-string v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 141
    const-string v0, "authsecret-hal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 142
    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 143
    const-string/jumbo v0, "pw-hash"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 144
    const-string v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 145
    const-string/jumbo v0, "weaver-pwd"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    .line 146
    const-string/jumbo v0, "weaver-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    .line 147
    const-string/jumbo v0, "weaver-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    .line 148
    const-string/jumbo v0, "password-metrics"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    .line 149
    nop

    .line 150
    const-string v0, "android-synthetic-password-personalization-context"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIOneplusParam:Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    .line 1603
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

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 574
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 575
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 576
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 577
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 578
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static synthetic access$200([B)[B
    .locals 1
    .param p0, "x0"    # [B

    .line 103
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    return-object v0
.end method

.method static synthetic access$600()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    return-object v0
.end method

.method static synthetic access$700()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    return-object v0
.end method

.method static synthetic access$800()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method static synthetic access$900()[B
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method private static bytesToHex([B)[B
    .locals 6
    .param p0, "bytes"    # [B

    .line 1605
    if-nez p0, :cond_0

    .line 1606
    const-string/jumbo v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 1608
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1609
    .local v0, "hexBytes":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1610
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 1611
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    ushr-int/lit8 v5, v2, 0x4

    aget-byte v5, v4, v5

    aput-byte v5, v0, v3

    .line 1612
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 1609
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1614
    .end local v1    # "j":I
    :cond_1
    return-object v0
.end method

.method private computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .locals 8
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "data"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 1560
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 1561
    .local v2, "password":[B
    iget-object v3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v1, 0x1

    shl-int v4, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v5, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v6, v1, v0

    const/16 v7, 0x20

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private createSecdiscardable(JI)[B
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1464
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v0

    .line 1465
    .local v0, "data":[B
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1466
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

    .line 1147
    move v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1148
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getEscrowSecret()[B

    move-result-object v2

    .local v2, "secret":[B
    goto :goto_0

    .line 1150
    .end local v2    # "secret":[B
    :cond_0
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    .line 1152
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

    .line 1153
    .local v3, "content":[B
    array-length v4, v3

    add-int/2addr v4, v1

    add-int/2addr v4, v1

    new-array v4, v4, [B

    .line 1159
    .local v4, "blob":[B
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1200(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne v5, v7, :cond_1

    .line 1160
    aput-byte v7, v4, v8

    goto :goto_1

    .line 1162
    :cond_1
    aput-byte v6, v4, v8

    .line 1164
    :goto_1
    aput-byte v0, v4, v1

    .line 1165
    array-length v1, v3

    invoke-static {v3, v8, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1166
    const-string/jumbo v6, "spblob"

    move-object v5, p0

    move-object v7, v4

    move-wide v8, p1

    move/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1167
    return-void
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1518
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    .line 1519
    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1438
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1439
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 1440
    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 1443
    :cond_0
    return-void
.end method

.method private destroyWeaverSlot(JI)V
    .locals 6
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 862
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    .line 863
    .local v0, "slot":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 864
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 865
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    .line 866
    .local v1, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " for user "

    const-string v4, "SyntheticPasswordManager"

    if-nez v2, :cond_0

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroy weaver slot "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    .line 869
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v2, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotDeleted(I)V

    goto :goto_0

    .line 871
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

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .end local v1    # "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private fakeUid(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 1543
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

    .line 1596
    .local p0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1597
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1598
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1600
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static generateHandle()J
    .locals 5

    .line 1534
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1537
    .local v0, "rng":Ljava/security/SecureRandom;
    :goto_0
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1538
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1539
    return-wide v1

    .line 1538
    :cond_0
    goto :goto_0
.end method

.method static getFrpCredentialType([B)I
    .locals 1
    .param p0, "payload"    # [B

    .line 725
    if-nez p0, :cond_0

    .line 726
    const/4 v0, -0x1

    return v0

    .line 728
    :cond_0
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return v0
.end method

.method private getHandleName(J)Ljava/lang/String;
    .locals 3
    .param p1, "handle"    # J

    .line 1556
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

    .line 900
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v0

    .line 901
    .local v0, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/PasswordSlotManager;->getUsedSlots()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 902
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge v1, v2, :cond_1

    .line 903
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 904
    return v1

    .line 902
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Run out of weaver slots."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 3

    .line 175
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIOneplusParam:Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    if-nez v0, :cond_0

    .line 177
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIOneplusParam:Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getting OnePlus param service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    return-object v1

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIOneplusParam:Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    return-object v0
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

    .line 887
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "weaver"

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 889
    .local v0, "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 890
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

    .line 891
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

    .line 892
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

    .line 893
    .local v6, "slot":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 894
    .end local v5    # "handle":Ljava/lang/Long;
    .end local v6    # "slot":I
    goto :goto_1

    .line 895
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_0
    goto :goto_0

    .line 896
    :cond_1
    return-object v1
.end method

.method private hasPasswordMetrics(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1502
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1506
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

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 619
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

    .line 614
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

    .line 672
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    const-string v2, "SyntheticPasswordManager"

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 696
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 697
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

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 678
    :cond_0
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v3, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v1, p0, v0

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    goto :goto_0

    .line 682
    :cond_1
    iget v1, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-nez v1, :cond_2

    .line 683
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    :cond_2
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v3, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v1, p0, v0

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    goto :goto_0

    .line 692
    :cond_3
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (FAILED), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    goto :goto_0

    .line 674
    :cond_4
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 675
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    aput-object v1, p0, v0

    .line 676
    nop

    .line 700
    :goto_0
    return-void
.end method

.method private loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .locals 4
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 817
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 818
    .local v0, "e0":[B
    const-string/jumbo v3, "p1"

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 819
    .local v1, "p1":[B
    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    .line 820
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private loadSecdiscardable(JI)[B
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1474
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

    .line 1510
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .locals 3
    .param p1, "userId"    # I

    .line 809
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

    .line 839
    const/4 v0, 0x5

    .line 840
    .local v0, "LENGTH":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 841
    .local v1, "data":[B
    const/4 v2, -0x1

    if-eqz v1, :cond_2

    array-length v3, v1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 845
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 846
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 847
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid weaver slot version of handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyntheticPasswordManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v2

    .line 851
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    return v2

    .line 842
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    return v2
.end method

.method private passwordTokenToGkInput([B)[B
    .locals 3
    .param p1, "token"    # [B

    .line 1566
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

    .line 1570
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1571
    .local v0, "key":[B
    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-lt v1, v2, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 1572
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "weaver key length too small"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 11
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 824
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1000(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v2

    const-string v1, "e0"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 825
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1100(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v7

    const-string/jumbo v6, "p1"

    const-wide/16 v8, 0x0

    move-object v5, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 826
    return-void
.end method

.method private savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V
    .locals 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .line 1495
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveMetricsKey()[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    new-instance v2, Lcom/android/server/locksettings/VersionedPasswordMetrics;

    invoke-direct {v2, p1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 1497
    invoke-virtual {v2}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->serialize()[B

    move-result-object v2

    .line 1495
    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    .line 1498
    .local v0, "encrypted":[B
    const-string/jumbo v4, "metrics"

    move-object v3, p0

    move-object v5, v0

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1499
    return-void
.end method

.method private saveSecdiscardable(J[BI)V
    .locals 6
    .param p1, "handle"    # J
    .param p3, "secdiscardable"    # [B
    .param p4, "userId"    # I

    .line 1470
    const-string/jumbo v1, "secdis"

    move-object v0, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1471
    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .locals 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .line 1514
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    .line 1515
    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .locals 6
    .param p1, "spHandle"    # [B
    .param p2, "userId"    # I

    .line 813
    const-string v1, "handle"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 814
    return-void
.end method

.method private saveWeaverSlot(IJI)V
    .locals 8
    .param p1, "slot"    # I
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 855
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 856
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 857
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 858
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string/jumbo v3, "weaver"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 859
    return-void
.end method

.method protected static secureRandom(I)[B
    .locals 2
    .param p0, "length"    # I

    .line 1548
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1551
    const/4 v1, 0x0

    return-object v1
.end method

.method private static setParamBuf(ILjava/lang/String;)Z
    .locals 6
    .param p0, "index"    # I
    .param p1, "dateStr"    # Ljava/lang/String;

    .line 186
    const-string v0, "SyntheticPasswordManager"

    const/4 v1, 0x0

    .line 188
    .local v1, "ret":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 190
    .local v2, "bytes":[B
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v3, "buff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 192
    aget-byte v5, v2, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    .end local v4    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v4

    invoke-interface {v4, p0, v3}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->setParamBuf(ILjava/util/ArrayList;)Z

    move-result v4

    move v1, v4

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setParamBuf ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "bytes":[B
    .end local v3    # "buff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_1
    goto :goto_1

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParamBuf index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dateStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method private synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .locals 3
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I

    .line 1042
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 1044
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1043
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x1

    .line 1047
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 1046
    invoke-virtual {v0, v1, p3, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_0

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 1052
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

    .line 1056
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 1058
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1057
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x2

    .line 1061
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 1060
    invoke-virtual {v0, v1, p4, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 1066
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

    .line 1588
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1589
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1590
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1592
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "rawSecdiscardable"    # [B

    .line 1455
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1457
    .local v0, "secdiscardable":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1458
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1459
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1460
    return-object v1
.end method

.method private transformUnderWeaverSecret([B[B)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "secret"    # [B

    .line 1446
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1448
    .local v0, "weaverSecret":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1449
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1450
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1451
    return-object v1
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 19
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "applicationId"    # [B
    .param p5, "sid"    # J
    .param p7, "userId"    # I

    .line 1326
    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p7

    const-string/jumbo v0, "spblob"

    move-wide/from16 v13, p1

    invoke-direct {v9, v0, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v15

    .line 1327
    .local v15, "blob":[B
    const/4 v0, 0x0

    if-nez v15, :cond_0

    .line 1328
    return-object v0

    .line 1330
    :cond_0
    const/4 v1, 0x0

    aget-byte v8, v15, v1

    .line 1331
    .local v8, "version":B
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v8, v1, :cond_2

    if-eq v8, v2, :cond_2

    if-ne v8, v3, :cond_1

    goto :goto_0

    .line 1334
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1336
    :cond_2
    :goto_0
    aget-byte v1, v15, v3

    if-ne v1, v10, :cond_8

    .line 1340
    if-ne v8, v3, :cond_3

    .line 1341
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v4, v15

    .line 1342
    invoke-static {v15, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1341
    invoke-static {v1, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v1

    move-object v6, v1

    .local v1, "secret":[B
    goto :goto_1

    .line 1344
    .end local v1    # "secret":[B
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v4, v15

    .line 1345
    invoke-static {v15, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1344
    invoke-virtual {v9, v1, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v1

    move-object v6, v1

    .line 1347
    .local v6, "secret":[B
    :goto_1
    const-string v1, "SyntheticPasswordManager"

    if-nez v6, :cond_4

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to decrypt SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-object v0

    .line 1351
    :cond_4
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v2, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    move-object v7, v2

    .line 1352
    .local v7, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-ne v10, v3, :cond_6

    .line 1353
    invoke-direct {v9, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not escrowable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-object v0

    .line 1357
    :cond_5
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateFromEscrow([B)V

    goto :goto_2

    .line 1359
    :cond_6
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    .line 1361
    :goto_2
    if-ne v8, v3, :cond_7

    .line 1362
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

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
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

    .line 1361
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

    .line 1365
    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v8    # "version":B
    .restart local v16    # "secret":[B
    .restart local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v18    # "version":B
    :goto_3
    return-object v17

    .line 1337
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "version":B
    .restart local v8    # "version":B
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static updateEnrollParam([BIIJ)Z
    .locals 19
    .param p0, "credential"    # [B
    .param p1, "credentialType"    # I
    .param p2, "userId"    # I
    .param p3, "handle"    # J

    .line 203
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 204
    .local v2, "index":I
    const/4 v3, 0x0

    .line 205
    .local v3, "ret":Z
    const-string v4, ""

    .line 206
    .local v4, "input":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v5, v0

    .line 207
    .local v5, "date":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "dateStr":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    const/16 v8, 0xc

    invoke-interface {v0, v8}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v0

    move v2, v0

    .line 211
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 212
    .local v0, "digest":Ljava/security/MessageDigest;
    array-length v9, v1

    move v10, v7

    :goto_0
    if-ge v10, v9, :cond_0

    aget-byte v11, v1, v10

    .line 213
    .local v11, "data":B
    invoke-virtual {v0, v11}, Ljava/security/MessageDigest;->update(B)V

    .line 212
    .end local v11    # "data":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 216
    .local v9, "credentialSHA256":[B
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "handleStr":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_1

    invoke-virtual {v10, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_1
    const-string v11, "0000"

    :goto_1
    move-object v10, v11

    .line 218
    const-string v11, "%02x%02x%02x%02x-%s %d %d %s\u0000"

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/Object;

    aget-byte v14, v9, v7

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v13, v7

    const/4 v14, 0x1

    aget-byte v15, v9, v14

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v15, 0x2

    aget-byte v16, v9, v15

    .line 219
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v7, 0x3

    aget-byte v17, v9, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    aput-object v17, v13, v7

    aput-object v10, v13, v12

    const/16 v17, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v13, v17

    const/16 v17, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v13, v17

    const/16 v17, 0x7

    aput-object v6, v13, v17

    .line 218
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 220
    const/16 v11, 0xd

    if-eqz v2, :cond_6

    if-eq v2, v14, :cond_5

    if-eq v2, v15, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v12, :cond_2

    goto :goto_2

    .line 238
    :cond_2
    const/4 v2, 0x1

    .line 239
    invoke-static {v11, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    goto :goto_2

    .line 234
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 235
    const/16 v7, 0x10

    invoke-static {v7, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 236
    goto :goto_2

    .line 230
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 231
    const/16 v7, 0xf

    invoke-static {v7, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 232
    goto :goto_2

    .line 226
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 227
    const/16 v7, 0xe

    invoke-static {v7, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 228
    goto :goto_2

    .line 222
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 223
    invoke-static {v11, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 224
    nop

    .line 242
    :goto_2
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v7

    invoke-interface {v7, v8, v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->setParamInt(II)Z

    move-result v7

    move v3, v7

    .line 243
    const-string/jumbo v7, "vendor.oem.enroll.index"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v9    # "credentialSHA256":[B
    .end local v10    # "handleStr":Ljava/lang/String;
    nop

    .line 248
    return v3

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const/4 v7, 0x0

    return v7
.end method

.method private static updateVerifyParam([BIIJI)Z
    .locals 18
    .param p0, "credential"    # [B
    .param p1, "credentialType"    # I
    .param p2, "userId"    # I
    .param p3, "handle"    # J
    .param p5, "verifyResult"    # I

    .line 251
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 252
    .local v2, "index":I
    const/4 v3, 0x0

    .line 253
    .local v3, "ret":Z
    const-string v4, ""

    .line 254
    .local v4, "input":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v5, v0

    .line 255
    .local v5, "date":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "dateStr":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 259
    .local v0, "digest":Ljava/security/MessageDigest;
    array-length v8, v1

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_0

    aget-byte v10, v1, v9

    .line 260
    .local v10, "data":B
    invoke-virtual {v0, v10}, Ljava/security/MessageDigest;->update(B)V

    .line 259
    .end local v10    # "data":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 264
    .local v8, "credentialSHA256":[B
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "handleStr":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_1

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const-string v10, "0000"

    :goto_1
    move-object v9, v10

    .line 266
    const-string v10, "%02x%02x%02x%02x-%s %d %d %s\u0000"

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    aget-byte v13, v8, v7

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v12, v7

    const/4 v13, 0x1

    aget-byte v14, v8, v13

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v14, 0x2

    aget-byte v15, v8, v14

    .line 267
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v15, 0x3

    aget-byte v16, v8, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v12, v15

    aput-object v9, v12, v11

    const/16 v16, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v12, v16

    const/16 v16, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v12, v16

    const/16 v16, 0x7

    aput-object v6, v12, v16

    .line 266
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 268
    if-nez p5, :cond_7

    .line 270
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v10

    const/16 v12, 0xd

    invoke-interface {v10, v12}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v10

    move v2, v10

    .line 271
    const/16 v10, 0x11

    if-eqz v2, :cond_6

    if-eq v2, v13, :cond_5

    if-eq v2, v14, :cond_4

    if-eq v2, v15, :cond_3

    if-eq v2, v11, :cond_2

    goto :goto_2

    .line 289
    :cond_2
    const/4 v2, 0x1

    .line 290
    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    goto :goto_2

    .line 285
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 286
    const/16 v10, 0x14

    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 287
    goto :goto_2

    .line 281
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 282
    const/16 v10, 0x13

    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 283
    goto :goto_2

    .line 277
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 278
    const/16 v10, 0x12

    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 279
    goto :goto_2

    .line 273
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 274
    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 275
    nop

    .line 293
    :goto_2
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v10

    invoke-interface {v10, v12, v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->setParamInt(II)Z

    move-result v10

    move v3, v10

    .line 294
    const-string/jumbo v10, "vendor.oem.verify.pass.index"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 296
    :cond_7
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v10

    const/16 v12, 0xe

    invoke-interface {v10, v12}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v10

    move v2, v10

    .line 297
    const/16 v10, 0x15

    if-eqz v2, :cond_c

    if-eq v2, v13, :cond_b

    if-eq v2, v14, :cond_a

    if-eq v2, v15, :cond_9

    if-eq v2, v11, :cond_8

    goto :goto_3

    .line 315
    :cond_8
    const/4 v2, 0x1

    .line 316
    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    goto :goto_3

    .line 311
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 312
    const/16 v10, 0x18

    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 313
    goto :goto_3

    .line 307
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 308
    const/16 v10, 0x17

    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 309
    goto :goto_3

    .line 303
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 304
    const/16 v10, 0x16

    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 305
    goto :goto_3

    .line 299
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 300
    invoke-static {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setParamBuf(ILjava/lang/String;)Z

    .line 301
    nop

    .line 320
    :goto_3
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v10

    invoke-interface {v10, v12, v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->setParamInt(II)Z

    move-result v10

    move v3, v10

    .line 321
    const-string/jumbo v10, "vendor.oem.verify.fail.index"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v8    # "credentialSHA256":[B
    .end local v9    # "handleStr":Ljava/lang/String;
    :goto_4
    nop

    .line 327
    return v3

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    return v7
.end method

.method private weaverEnroll(I[B[B)[B
    .locals 5
    .param p1, "slot"    # I
    .param p2, "key"    # [B
    .param p3, "value"    # [B

    .line 630
    const-string v0, "SyntheticPasswordManager"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v1, :cond_4

    .line 633
    if-nez p2, :cond_0

    .line 634
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v1, [B

    goto :goto_0

    .line 635
    :cond_0
    array-length v1, p2

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v1, v2, :cond_3

    .line 638
    :goto_0
    if-nez p3, :cond_1

    .line 639
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p3

    .line 642
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    .line 643
    .local v2, "writeStatus":I
    if-eqz v2, :cond_2

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weaver write failed, slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    return-object v1

    .line 650
    .end local v2    # "writeStatus":I
    :cond_2
    nop

    .line 651
    return-object p3

    .line 647
    :catch_0
    move-exception v2

    .line 648
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "weaver write failed"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    return-object v1

    .line 636
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid key size for weaver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slot for weaver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 5
    .param p1, "slot"    # I
    .param p2, "key"    # [B

    .line 660
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_2

    .line 663
    if-nez p2, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v0, [B

    goto :goto_0

    .line 665
    :cond_0
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_1

    .line 668
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 670
    .local v0, "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;

    invoke-direct {v4, v0, p1}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;-><init>([Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-interface {v2, p1, v3, v4}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    goto :goto_1

    .line 701
    :catch_0
    move-exception v2

    .line 702
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v3, v0, v1

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weaver read failed, slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SyntheticPasswordManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    aget-object v1, v0, v1

    return-object v1

    .line 666
    .end local v0    # "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid key size for weaver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slot for weaver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .locals 11
    .param p1, "handle"    # J
    .param p3, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .line 1113
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1114
    return v1

    .line 1116
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

    .line 1117
    .local v0, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    if-nez v0, :cond_1

    .line 1118
    return v1

    .line 1120
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    const-string v3, "SyntheticPasswordManager"

    if-nez v2, :cond_2

    .line 1121
    const-string v2, "User is not escrowable"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return v1

    .line 1124
    :cond_2
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1125
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v2

    .line 1126
    .local v2, "slot":I
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

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v4

    if-nez v4, :cond_3

    .line 1128
    const-string v4, "Failed to enroll weaver secret when activating token"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return v1

    .line 1131
    :cond_3
    invoke-direct {p0, v2, p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 1132
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 1134
    .end local v2    # "slot":I
    :cond_4
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1135
    const/4 v5, 0x1

    iget-object v7, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 1137
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    if-eqz v1, :cond_5

    .line 1139
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    invoke-interface {v1, p1, p2, p4}, Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;->onEscrowTokenActivated(JI)V

    .line 1141
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public clearSidForUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 798
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 799
    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .locals 20
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .line 926
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v13

    .line 927
    .local v13, "handle":J
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v15

    .line 928
    .local v15, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    move-object/from16 v9, p2

    invoke-direct {v10, v9, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v7

    .line 932
    .local v7, "pwdToken":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v8, "SyntheticPasswordManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v0

    .line 935
    .local v0, "weaverSlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weaver enroll password to slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-direct {v10, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v3

    invoke-direct {v10, v0, v3, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v3

    .line 938
    .local v3, "weaverSecret":[B
    if-eqz v3, :cond_0

    .line 942
    invoke-direct {v10, v0, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 943
    iget-object v4, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v4, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 945
    invoke-direct {v10, v15, v1, v12, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 947
    iput-object v2, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 948
    const-wide/16 v1, 0x0

    .line 949
    .local v1, "sid":J
    invoke-direct {v10, v7, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v0

    .line 950
    .end local v3    # "weaverSecret":[B
    .local v0, "applicationId":[B
    move-wide/from16 v16, v1

    goto :goto_1

    .line 939
    .end local v1    # "sid":J
    .local v0, "weaverSlot":I
    .restart local v3    # "weaverSecret":[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to enroll user password under weaver "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 954
    .end local v0    # "weaverSlot":I
    .end local v3    # "weaverSecret":[B
    :cond_1
    :try_start_0
    invoke-direct {v10, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "ignore":Landroid/os/RemoteException;
    const-string v3, "Failed to clear SID from gatekeeper"

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    .end local v0    # "ignore":Landroid/os/RemoteException;
    :goto_0
    :try_start_1
    invoke-direct {v10, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    .line 962
    invoke-direct {v10, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v3

    .line 961
    invoke-interface {v11, v0, v2, v2, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 965
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 966
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 970
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 971
    iget-object v2, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v10, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v2

    .line 972
    .local v2, "sid":J
    nop

    .line 973
    invoke-direct {v10, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v4

    .line 972
    invoke-direct {v10, v7, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    .line 975
    .local v4, "applicationId":[B
    invoke-direct {v10, v15, v1, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    move-wide/from16 v16, v2

    move-object v0, v4

    .line 977
    .end local v2    # "sid":J
    .end local v4    # "applicationId":[B
    .local v0, "applicationId":[B
    .local v16, "sid":J
    :goto_1
    invoke-virtual {v15}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v3

    const-string/jumbo v2, "pwd"

    move-object/from16 v1, p0

    move-wide v4, v13

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 978
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V

    .line 979
    const/4 v4, 0x0

    move-wide v2, v13

    move-object/from16 v5, p3

    move-object v6, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v7    # "pwdToken":[B
    .local v18, "pwdToken":[B
    move-wide/from16 v7, v16

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEnrollParam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-static {v1, v2, v12, v13, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->updateEnrollParam([BIIJ)Z

    .line 986
    return-wide v13

    .line 967
    .end local v16    # "sid":J
    .end local v18    # "pwdToken":[B
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v7    # "pwdToken":[B
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_1
    move-exception v0

    move-object/from16 v18, v7

    .line 964
    .end local v7    # "pwdToken":[B
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "pwdToken":[B
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to enroll password for new SP blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .locals 1
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "sid"    # J

    .line 1526
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 6
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "changeCallback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 1076
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v0

    .line 1077
    .local v0, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_0
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    invoke-direct {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    .line 1081
    .local v2, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    .line 1082
    .local v3, "secdiscardable":[B
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1083
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1084
    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v4, v5, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    goto :goto_0

    .line 1087
    :cond_1
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 1088
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1090
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 1091
    iput-object p3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 1093
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    return-wide v0
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .locals 1
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B

    .line 1522
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroyEscrowData(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 834
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 835
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 836
    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1431
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1432
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1433
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1434
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1435
    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 1530
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    .line 1531
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1426
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1427
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1428
    return-void
.end method

.method public existsHandle(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1422
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method getCredentialType(JI)I
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 716
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 717
    .local v0, "passwordData":[B
    if-nez v0, :cond_0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCredentialType: encountered empty password data for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v1, -0x1

    return v1

    .line 721
    :cond_0
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return v1
.end method

.method public getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;
    .locals 4
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1485
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 1486
    .local v0, "encrypted":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1487
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveMetricsKey()[B

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-static {v2, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v2

    .line 1489
    .local v2, "decrypted":[B
    if-nez v2, :cond_1

    return-object v1

    .line 1490
    :cond_1
    invoke-static {v2}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->deserialize([B)Lcom/android/server/locksettings/VersionedPasswordMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->getMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    return-object v1
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

    .line 1098
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1101
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/hardware/weaver/V1_0/IWeaver;->getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Device does not support weaver"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasEscrowData(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 829
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 829
    :goto_0
    return v0
.end method

.method public hasSidForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 802
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initWeaverService()V
    .locals 3

    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 592
    monitor-exit p0

    return-void

    .line 595
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 596
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 597
    if-eqz v0, :cond_1

    .line 598
    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    invoke-interface {v0, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    :cond_1
    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Failed to get weaver service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    return-void

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$initWeaverService$0$SyntheticPasswordManager(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "config"    # Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 599
    if-nez p1, :cond_0

    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lez v0, :cond_0

    .line 600
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    goto :goto_0

    .line 602
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

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 606
    :goto_0
    return-void
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p4, "requestedQuality"    # I

    .line 1025
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 1026
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    iget v0, p3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 1029
    .local v0, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1030
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v1

    .line 1031
    .local v1, "weaverSlot":I
    if-eq v1, v2, :cond_0

    .line 1032
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    goto :goto_0

    .line 1034
    :cond_0
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 1038
    .end local v0    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v1    # "weaverSlot":I
    :cond_1
    :goto_0
    return-void
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 4
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I

    .line 785
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p3, v1, v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 789
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 793
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 794
    return-void

    .line 790
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to create new SID for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create new SID for user"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 4
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "hash"    # [B
    .param p3, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p4, "userId"    # I

    .line 755
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 757
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-eqz p2, :cond_1

    .line 759
    :try_start_0
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    .line 760
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v2

    .line 759
    invoke-interface {p1, p4, p2, v1, v2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 764
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyntheticPasswordManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_0

    .line 761
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to enroll credential duing SP init"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 771
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 773
    :goto_0
    invoke-direct {p0, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 774
    return-object v0
.end method

.method public removePendingToken(JI)Z
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1105
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1106
    return v1

    .line 1108
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

    .line 709
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

    .line 710
    .local v1, "handle":J
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 711
    invoke-direct {p0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 712
    .end local v1    # "handle":J
    goto :goto_0

    .line 713
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

    .line 1582
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

    .line 1578
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .locals 23
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 1177
    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move/from16 v13, p5

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v14, v0

    .line 1178
    .local v14, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    const-string/jumbo v0, "pwd"

    invoke-direct {v9, v0, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v15

    .line 1180
    .local v15, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v6, "SyntheticPasswordManager"

    if-nez v0, :cond_0

    .line 1181
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1181
    const-string v1, "Credential type mismatch: expected %d actual %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1184
    return-object v14

    .line 1187
    :cond_0
    invoke-direct {v9, v12, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v4

    .line 1191
    .local v4, "pwdToken":[B
    invoke-direct {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v5

    .line 1192
    .local v5, "weaverSlot":I
    const/4 v0, -0x1

    if-eq v5, v0, :cond_3

    .line 1194
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1195
    const-string v0, "No weaver service to unwrap password based SP"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1197
    return-object v14

    .line 1199
    :cond_1
    invoke-direct {v9, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v0

    invoke-direct {v9, v5, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1200
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    return-object v14

    .line 1203
    :cond_2
    const-wide/16 v0, 0x0

    .line 1204
    .local v0, "sid":J
    iget-object v2, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {v9, v4, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v2

    move-wide/from16 v16, v0

    move-object/from16 v19, v2

    move/from16 v18, v5

    move-object v8, v6

    move-object v6, v4

    .local v2, "applicationId":[B
    goto/16 :goto_4

    .line 1206
    .end local v0    # "sid":J
    .end local v2    # "applicationId":[B
    :cond_3
    invoke-direct {v9, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v3

    .line 1209
    .local v3, "gkPwdToken":[B
    :try_start_0
    invoke-direct {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v17

    const-wide/16 v18, 0x0

    iget-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v16, p1

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-interface/range {v16 .. v21}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v16, v0

    .line 1215
    .local v16, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVerifyParam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    iget v2, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1220
    invoke-virtual/range {v16 .. v16}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    .line 1219
    move-object v7, v3

    .end local v3    # "gkPwdToken":[B
    .local v7, "gkPwdToken":[B
    move/from16 v3, p5

    move-object/from16 v22, v4

    move/from16 v18, v5

    .end local v4    # "pwdToken":[B
    .end local v5    # "weaverSlot":I
    .local v18, "weaverSlot":I
    .local v22, "pwdToken":[B
    move-wide/from16 v4, p2

    move-object v8, v6

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->updateVerifyParam([BIIJI)Z

    .line 1223
    invoke-virtual/range {v16 .. v16}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v6

    .line 1224
    .local v6, "responseCode":I
    if-nez v6, :cond_8

    .line 1225
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1226
    invoke-virtual/range {v16 .. v16}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1229
    :try_start_1
    invoke-direct {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    iget-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, p1

    :try_start_2
    invoke-interface {v4, v0, v1, v7, v7}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1235
    .local v0, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_1

    .line 1231
    .end local v0    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    .line 1232
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "Fail to invoke gatekeeper.enroll"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1233
    sget-object v1, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    move-object v0, v1

    .line 1236
    .local v0, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_1
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_4

    .line 1237
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1240
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    iput v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1241
    invoke-virtual {v15}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v3

    const-string/jumbo v2, "pwd"

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move-object/from16 v20, v7

    move v7, v6

    .end local v6    # "responseCode":I
    .local v7, "responseCode":I
    .local v20, "gkPwdToken":[B
    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1242
    const/4 v1, 0x0

    invoke-direct {v9, v15, v1, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_2

    .line 1244
    .end local v20    # "gkPwdToken":[B
    .restart local v6    # "responseCode":I
    .local v7, "gkPwdToken":[B
    :cond_4
    move-object/from16 v20, v7

    move v7, v6

    .end local v6    # "responseCode":I
    .local v7, "responseCode":I
    .restart local v20    # "gkPwdToken":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to re-enroll user password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    .end local v0    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_2
    goto :goto_3

    .line 1226
    .end local v20    # "gkPwdToken":[B
    .restart local v6    # "responseCode":I
    .local v7, "gkPwdToken":[B
    :cond_5
    move-object/from16 v20, v7

    move v7, v6

    .line 1255
    .end local v6    # "responseCode":I
    .local v7, "responseCode":I
    .restart local v20    # "gkPwdToken":[B
    :goto_3
    iget-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v9, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v0

    .line 1256
    .local v0, "sid":J
    nop

    .line 1257
    invoke-direct {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v2

    .line 1256
    move-object/from16 v6, v22

    .end local v22    # "pwdToken":[B
    .local v6, "pwdToken":[B
    invoke-direct {v9, v6, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v2

    move-wide/from16 v16, v0

    move-object/from16 v19, v2

    .line 1261
    .end local v0    # "sid":J
    .end local v7    # "responseCode":I
    .end local v20    # "gkPwdToken":[B
    .local v16, "sid":J
    .local v19, "applicationId":[B
    :goto_4
    if-eqz p6, :cond_6

    .line 1263
    :try_start_3
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1266
    goto :goto_5

    .line 1264
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1265
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "progressCallback throws exception"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v5, v19

    move-object/from16 v21, v6

    .end local v6    # "pwdToken":[B
    .local v21, "pwdToken":[B
    move-wide/from16 v6, v16

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1272
    iget-object v3, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1276
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_7

    invoke-direct {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasPasswordMetrics(JI)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1277
    iget-object v3, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v4, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V

    .line 1279
    :cond_7
    return-object v14

    .line 1248
    .end local v19    # "applicationId":[B
    .end local v21    # "pwdToken":[B
    .local v6, "responseCode":I
    .local v7, "gkPwdToken":[B
    .local v16, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v22    # "pwdToken":[B
    :cond_8
    move-object/from16 v20, v7

    move-object/from16 v21, v22

    move v7, v6

    .end local v6    # "responseCode":I
    .end local v22    # "pwdToken":[B
    .local v7, "responseCode":I
    .restart local v20    # "gkPwdToken":[B
    .restart local v21    # "pwdToken":[B
    const/4 v0, 0x1

    if-ne v7, v0, :cond_9

    .line 1249
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual/range {v16 .. v16}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1250
    return-object v14

    .line 1252
    :cond_9
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1253
    return-object v14

    .line 1211
    .end local v7    # "responseCode":I
    .end local v16    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v18    # "weaverSlot":I
    .end local v20    # "gkPwdToken":[B
    .end local v21    # "pwdToken":[B
    .restart local v3    # "gkPwdToken":[B
    .restart local v4    # "pwdToken":[B
    .restart local v5    # "weaverSlot":I
    :catch_3
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v18, v5

    move-object v8, v6

    .line 1212
    .end local v3    # "gkPwdToken":[B
    .end local v4    # "pwdToken":[B
    .end local v5    # "weaverSlot":I
    .restart local v0    # "e":Landroid/os/RemoteException;
    .restart local v18    # "weaverSlot":I
    .restart local v20    # "gkPwdToken":[B
    .restart local v21    # "pwdToken":[B
    const-string v1, "gatekeeper verify failed"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1214
    return-object v14
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .locals 17
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 1289
    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    move/from16 v11, p5

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v12, v0

    .line 1290
    .local v12, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    .line 1291
    .local v0, "secdiscardable":[B
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v13

    .line 1292
    .local v13, "slotId":I
    const/4 v1, -0x1

    if-eq v13, v1, :cond_3

    .line 1293
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    const-string v2, "SyntheticPasswordManager"

    if-nez v1, :cond_0

    .line 1294
    const-string v1, "No weaver service to unwrap token based SP"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1296
    return-object v12

    .line 1298
    :cond_0
    const/4 v1, 0x0

    invoke-direct {v8, v13, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 1299
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 1300
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1305
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v2, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    .line 1301
    :cond_2
    :goto_0
    const-string v3, "Failed to retrieve weaver secret when unwrapping token"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1303
    return-object v12

    .line 1292
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_3
    move-object v14, v0

    .line 1308
    .end local v0    # "secdiscardable":[B
    .local v14, "secdiscardable":[B
    :goto_1
    move-object/from16 v15, p4

    invoke-direct {v8, v15, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v16

    .line 1309
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

    .line 1311
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_4

    .line 1312
    iget-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1313
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v0, :cond_5

    .line 1316
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2

    .line 1319
    :cond_4
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1321
    :cond_5
    :goto_2
    return-object v12
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .line 1378
    const-string v0, "SyntheticPasswordManager"

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v7

    .line 1379
    .local v7, "spHandle":[B
    if-nez v7, :cond_0

    .line 1382
    const/4 v0, 0x0

    return-object v0

    .line 1386
    :cond_0
    nop

    .line 1387
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v6

    .line 1386
    move-object v1, p1

    move v2, p5

    move-wide v3, p3

    move-object v5, v7

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1391
    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1392
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    .line 1393
    .local v2, "responseCode":I
    if-nez v2, :cond_3

    .line 1394
    new-instance v3, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .line 1395
    .local v3, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1397
    nop

    .line 1398
    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v4

    .line 1397
    invoke-interface {p1, p5, v7, v7, v4}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v4

    .line 1402
    goto :goto_0

    .line 1399
    :catch_0
    move-exception v4

    .line 1400
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to invoke gatekeeper.enroll"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    sget-object v1, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1403
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_1

    .line 1404
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    .line 1405
    .end local v7    # "spHandle":[B
    .local v0, "spHandle":[B
    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 1407
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 1410
    .end local v0    # "spHandle":[B
    .restart local v7    # "spHandle":[B
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to re-enroll SP handle for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_2
    return-object v3

    .line 1414
    .end local v3    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_3
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    .line 1415
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    return-object v0

    .line 1417
    :cond_4
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1388
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v2    # "responseCode":I
    :catch_1
    move-exception v1

    .line 1389
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to verify with gatekeeper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method public verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 11
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "userCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 992
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    .line 993
    .local v0, "persistentData":Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const-string v2, "SyntheticPasswordManager"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 994
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    .line 995
    .local v1, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {p0, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v3

    .line 999
    .local v3, "pwdToken":[B
    :try_start_0
    iget v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v6

    const-wide/16 v7, 0x0

    iget-object v9, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1000
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v10

    .line 999
    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1005
    invoke-static {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 1001
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_0
    move-exception v4

    .line 1002
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FRP verifyChallenge failed"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v2

    .line 1006
    .end local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v3    # "pwdToken":[B
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1007
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1008
    const-string v1, "No weaver service to verify SP-based FRP credential"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 1011
    :cond_1
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    .line 1012
    .restart local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {p0, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v2

    .line 1013
    .local v2, "pwdToken":[B
    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 1015
    .local v3, "weaverSlot":I
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 1017
    .end local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v2    # "pwdToken":[B
    .end local v3    # "weaverSlot":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistentData.type must be TYPE_SP or TYPE_SP_WEAVER, but is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method
