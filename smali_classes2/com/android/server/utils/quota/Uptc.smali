.class final Lcom/android/server/utils/quota/Uptc;
.super Ljava/lang/Object;
.source "Uptc.java"


# instance fields
.field private final mHash:I

.field public final packageName:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final userId:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    .line 42
    iput-object p2, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    .line 45
    nop

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v1, p1, 0x1f

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_0
    iput v0, p0, Lcom/android/server/utils/quota/Uptc;->mHash:I

    .line 48
    return-void
.end method

.method static string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 58
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 59
    iget-object v2, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 63
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/android/server/utils/quota/Uptc;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 71
    move-object v1, p1

    check-cast v1, Lcom/android/server/utils/quota/Uptc;

    .line 72
    .local v1, "other":Lcom/android/server/utils/quota/Uptc;
    iget v3, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget v4, v1, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    .line 73
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    .line 74
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 72
    :goto_0
    return v0

    .line 76
    .end local v1    # "other":Lcom/android/server/utils/quota/Uptc;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/server/utils/quota/Uptc;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    iget v0, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget-object v1, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
