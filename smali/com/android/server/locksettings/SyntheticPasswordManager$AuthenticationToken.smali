.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private E0:[B

.field private P1:[B

.field private final mVersion:B

.field private syntheticPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(B)V
    .locals 0
    .param p1, "version"    # B

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    .line 158
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 144
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # [B

    .line 144
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 144
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 144
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 144
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # [B

    .line 144
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object p1
.end method

.method protected static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 3

    .line 204
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 205
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 206
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    .line 205
    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    .line 207
    return-object v0
.end method

.method private derivePassword([B)[B
    .locals 3
    .param p1, "personalization"    # [B

    .line 161
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 162
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    .line 163
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object v0

    .line 162
    return-object v0

    .line 165
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 165
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private initialize([B[B)V
    .locals 3
    .param p1, "P0"    # [B
    .param p2, "P1"    # [B

    .line 191
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    .line 192
    nop

    .line 194
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$700()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 193
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 192
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 196
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$800()[B

    move-result-object v1

    .line 195
    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    .line 197
    return-void
.end method


# virtual methods
.method public computeP0()[B
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$800()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveDiskEncryptionKey()[B
    .locals 1

    .line 179
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$400()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .locals 1

    .line 175
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$300()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()[B
    .locals 1

    .line 171
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$100()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$200([B)[B

    move-result-object v0

    return-object v0
.end method

.method public derivePasswordHashFactor()[B
    .locals 1

    .line 187
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveVendorAuthSecret()[B
    .locals 1

    .line 183
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$500()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public recreate([B)V
    .locals 1
    .param p1, "secret"    # [B

    .line 200
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    .line 201
    return-void
.end method
