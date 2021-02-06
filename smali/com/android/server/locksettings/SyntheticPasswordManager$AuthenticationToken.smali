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
.field private mEncryptedEscrowSplit0:[B

.field private mEscrowSplit1:[B

.field private mSyntheticPassword:[B

.field private final mVersion:B


# direct methods
.method constructor <init>(B)V
    .locals 0
    .param p1, "version"    # B

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    .line 375
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 361
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 361
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 361
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return v0
.end method

.method static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 5

    .line 444
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 445
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 446
    .local v2, "escrowSplit0":[B
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    .line 447
    .local v1, "escrowSplit1":[B
    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B[B)V

    .line 448
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 449
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$800()[B

    move-result-object v4

    .line 448
    invoke-static {v3, v4, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v3

    .line 450
    .local v3, "encrypteEscrowSplit0":[B
    invoke-virtual {v0, v3, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    .line 451
    return-object v0
.end method

.method private derivePassword([B)[B
    .locals 3
    .param p1, "personalization"    # [B

    .line 378
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 379
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    .line 380
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object v0

    .line 379
    return-object v0

    .line 382
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private recreate([B[B)V
    .locals 3
    .param p1, "escrowSplit0"    # [B
    .param p2, "escrowSplit1"    # [B

    .line 459
    nop

    .line 461
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$900()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 460
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 459
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 462
    return-void
.end method


# virtual methods
.method public deriveDiskEncryptionKey()[B
    .locals 1

    .line 396
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$400()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .locals 1

    .line 392
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$300()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()[B
    .locals 1

    .line 388
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$100()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$200([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveMetricsKey()[B
    .locals 1

    .line 409
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$700()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public derivePasswordHashFactor()[B
    .locals 1

    .line 404
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveVendorAuthSecret()[B
    .locals 1

    .line 400
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$500()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEscrowSecret()[B
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    return-object v0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$800()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSyntheticPassword()[B
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .line 490
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return v0
.end method

.method public recreateDirectly([B)V
    .locals 1
    .param p1, "syntheticPassword"    # [B

    .line 437
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 438
    return-void
.end method

.method public recreateFromEscrow([B)V
    .locals 1
    .param p1, "escrowSplit0"    # [B

    .line 428
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B[B)V

    .line 431
    return-void
.end method

.method public setEscrowData([B[B)V
    .locals 0
    .param p1, "encryptedEscrowSplit0"    # [B
    .param p2, "escrowSplit1"    # [B

    .line 418
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    .line 419
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    .line 420
    return-void
.end method
