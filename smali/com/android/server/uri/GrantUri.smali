.class public Lcom/android/server/uri/GrantUri;
.super Ljava/lang/Object;
.source "GrantUri.java"


# instance fields
.field public prefix:Z

.field public final sourceUserId:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Z)V
    .locals 0
    .param p1, "sourceUserId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "prefix"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 34
    iput-object p2, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 35
    iput-boolean p3, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 36
    return-void
.end method

.method public static resolve(ILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;
    .locals 4
    .param p0, "defaultSourceUserHandle"    # I
    .param p1, "uri"    # Landroid/net/Uri;

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v2

    .line 80
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    .line 79
    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Lcom/android/server/uri/GrantUri;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/android/server/uri/GrantUri;

    .line 51
    .local v0, "other":Lcom/android/server/uri/GrantUri;
    iget-object v2, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v3, v0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    iget-boolean v3, v0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 54
    .end local v0    # "other":Lcom/android/server/uri/GrantUri;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 40
    const/4 v0, 0x1

    .line 41
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    add-int/2addr v1, v2

    .line 42
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 43
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v1, v2

    .line 44
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [prefix]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [prefix]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 72
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 73
    iget v2, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 75
    return-void
.end method
