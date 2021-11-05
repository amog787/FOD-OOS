.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
.super Ljava/lang/Object;
.source "RecoverySessionStorage.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private final mKeyClaimant:[B

.field private final mLskfHash:[B

.field private final mSessionId:Ljava/lang/String;

.field private final mVaultParams:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B[B)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "lskfHash"    # [B
    .param p3, "keyClaimant"    # [B
    .param p4, "vaultParams"    # [B

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    .line 150
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    .line 152
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 139
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 191
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 192
    return-void
.end method

.method public getKeyClaimant()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    return-object v0
.end method

.method public getLskfHash()[B
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    return-object v0
.end method

.method public getVaultParams()[B
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    return-object v0
.end method
