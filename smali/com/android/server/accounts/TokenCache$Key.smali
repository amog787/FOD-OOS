.class Lcom/android/server/accounts/TokenCache$Key;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final packageName:Ljava/lang/String;

.field public final sigDigest:[B

.field public final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sigDigest"    # [B

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    .line 56
    iput-object p2, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/server/accounts/TokenCache$Key;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, p1

    check-cast v1, Lcom/android/server/accounts/TokenCache$Key;

    .line 65
    .local v1, "cacheKey":Lcom/android/server/accounts/TokenCache$Key;
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iget-object v3, v1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 66
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 67
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    iget-object v3, v1, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 68
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 65
    :goto_0
    return v0

    .line 70
    .end local v1    # "cacheKey":Lcom/android/server/accounts/TokenCache$Key;
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 79
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    .line 76
    return v0
.end method
