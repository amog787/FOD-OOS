.class public Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# instance fields
.field private final mId:I

.field private final mPayload:[B


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 260
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->access$000(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    .line 261
    return-void
.end method

.method public static fromStableParcelable(Landroid/net/InformationElementParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
    .locals 3
    .param p0, "p"    # Landroid/net/InformationElementParcelable;

    .line 312
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 313
    :cond_0
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    iget v1, p0, Landroid/net/InformationElementParcelable;->id:I

    iget-object v2, p0, Landroid/net/InformationElementParcelable;->payload:[B

    .line 314
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;-><init>(ILjava/nio/ByteBuffer;)V

    .line 313
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 280
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 281
    :cond_0
    instance-of v1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 282
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    .line 283
    .local v1, "other":Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
    iget v3, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    iget v4, v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    iget-object v4, v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getId()I
    .locals 1

    .line 267
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    return v0
.end method

.method public getPayload()Ljava/nio/ByteBuffer;
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toStableParcelable()Landroid/net/InformationElementParcelable;
    .locals 2

    .line 300
    new-instance v0, Landroid/net/InformationElementParcelable;

    invoke-direct {v0}, Landroid/net/InformationElementParcelable;-><init>()V

    .line 301
    .local v0, "p":Landroid/net/InformationElementParcelable;
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    iput v1, v0, Landroid/net/InformationElementParcelable;->id:I

    .line 302
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/net/InformationElementParcelable;->payload:[B

    .line 303
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
