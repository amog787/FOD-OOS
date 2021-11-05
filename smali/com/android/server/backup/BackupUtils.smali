.class public Lcom/android/server/backup/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BackupUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashSignature(Landroid/content/pm/Signature;)[B
    .locals 1
    .param p0, "signature"    # Landroid/content/pm/Signature;

    .line 116
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/BackupUtils;->hashSignature([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hashSignature([B)[B
    .locals 3
    .param p0, "signature"    # [B

    .line 106
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 107
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 109
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "BackupUtils"

    const-string v2, "No SHA-256 algorithm found!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 132
    .local p0, "sigs":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez p0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v0, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 138
    .local v2, "s":[B
    invoke-static {v2}, Lcom/android/server/backup/BackupUtils;->hashSignature([B)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "s":[B
    goto :goto_0

    .line 140
    :cond_1
    return-object v0
.end method

.method public static hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "sigs"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .local v0, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 126
    .local v3, "s":Landroid/content/pm/Signature;
    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignature(Landroid/content/pm/Signature;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v3    # "s":Landroid/content/pm/Signature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_1
    return-object v0
.end method

.method public static signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 11
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .param p2, "pmi"    # Landroid/content/pm/PackageManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/content/pm/PackageManagerInternal;",
            ")Z"
        }
    .end annotation

    .line 41
    .local p0, "storedSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_3

    .line 49
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 51
    return v2

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    return v0

    .line 59
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 60
    .local v1, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v1, :cond_3

    .line 61
    const-string v2, "BackupUtils"

    const-string/jumbo v3, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v0

    .line 71
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 72
    .local v3, "nStored":I
    if-ne v3, v2, :cond_4

    .line 78
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe([BLjava/lang/String;)Z

    move-result v0

    return v0

    .line 83
    :cond_4
    nop

    .line 84
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v4

    .line 85
    .local v4, "deviceHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 87
    .local v5, "nDevice":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_8

    .line 88
    const/4 v7, 0x0

    .line 89
    .local v7, "match":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v5, :cond_6

    .line 90
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 91
    const/4 v7, 0x1

    .line 92
    goto :goto_2

    .line 89
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 95
    .end local v8    # "j":I
    :cond_6
    :goto_2
    if-nez v7, :cond_7

    .line 96
    return v0

    .line 87
    .end local v7    # "match":Z
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 100
    .end local v6    # "i":I
    :cond_8
    return v2

    .line 42
    .end local v1    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v3    # "nStored":I
    .end local v4    # "deviceHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v5    # "nDevice":I
    :cond_9
    :goto_3
    return v0
.end method
