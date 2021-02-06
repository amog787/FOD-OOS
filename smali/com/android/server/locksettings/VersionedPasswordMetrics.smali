.class public Lcom/android/server/locksettings/VersionedPasswordMetrics;
.super Ljava/lang/Object;
.source "VersionedPasswordMetrics.java"


# static fields
.field private static final VERSION_1:I = 0x1


# instance fields
.field private final mMetrics:Landroid/app/admin/PasswordMetrics;

.field private final mVersion:I


# direct methods
.method private constructor <init>(ILandroid/app/admin/PasswordMetrics;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "metrics"    # Landroid/app/admin/PasswordMetrics;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    .line 36
    iput p1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mVersion:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/LockscreenCredential;)V
    .locals 2
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 40
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(ILandroid/app/admin/PasswordMetrics;)V

    .line 41
    return-void
.end method

.method public static deserialize([B)Lcom/android/server/locksettings/VersionedPasswordMetrics;
    .locals 14
    .param p0, "data"    # [B

    .line 70
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 74
    .local v1, "version":I
    new-instance v13, Landroid/app/admin/PasswordMetrics;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    .line 77
    .local v2, "metrics":Landroid/app/admin/PasswordMetrics;
    new-instance v3, Lcom/android/server/locksettings/VersionedPasswordMetrics;

    invoke-direct {v3, v1, v2}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(ILandroid/app/admin/PasswordMetrics;)V

    return-object v3
.end method


# virtual methods
.method public getMetrics()Landroid/app/admin/PasswordMetrics;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mVersion:I

    return v0
.end method

.method public serialize()[B
    .locals 2

    .line 53
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
