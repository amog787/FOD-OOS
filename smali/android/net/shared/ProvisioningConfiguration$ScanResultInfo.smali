.class public Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/shared/ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanResultInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
    }
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private final mInformationElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p3, "informationElements":Ljava/util/List;, "Ljava/util/List<Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const-string/jumbo v0, "ssid must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    const-string v0, "bssid must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    iput-object p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 323
    iput-object p2, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 326
    return-void
.end method

.method static synthetic access$000(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .line 241
    invoke-static {p0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->convertToByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method private static convertToByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 405
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 406
    .local v0, "bytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 408
    .local v1, "copy":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 409
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    return-object v0

    :catchall_0
    move-exception v2

    goto :goto_0

    .line 410
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    :try_start_1
    const-string v3, "ProvisioningConfiguration"

    const-string v4, "Buffer under flow exception should never happen."

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    nop

    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :goto_0
    return-object v0
.end method

.method public static fromStableParcelable(Landroid/net/ScanResultInfoParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
    .locals 4
    .param p0, "p"    # Landroid/net/ScanResultInfoParcelable;

    .line 397
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 398
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v0, "ies":Ljava/util/List;, "Ljava/util/List<Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;>;"
    iget-object v1, p0, Landroid/net/ScanResultInfoParcelable;->informationElements:[Landroid/net/InformationElementParcelable;

    sget-object v2, Landroid/net/shared/-$$Lambda$n57eyzHGkb9FpnLoKDxZ85lOKec;->INSTANCE:Landroid/net/shared/-$$Lambda$n57eyzHGkb9FpnLoKDxZ85lOKec;

    invoke-static {v1, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iget-object v2, p0, Landroid/net/ScanResultInfoParcelable;->ssid:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/ScanResultInfoParcelable;->bssid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 367
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 368
    :cond_0
    instance-of v1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 369
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 370
    .local v1, "other":Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
    iget-object v3, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 371
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    iget-object v4, v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 372
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 370
    :goto_0
    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getInformationElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 377
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toStableParcelable()Landroid/net/ScanResultInfoParcelable;
    .locals 4

    .line 384
    new-instance v0, Landroid/net/ScanResultInfoParcelable;

    invoke-direct {v0}, Landroid/net/ScanResultInfoParcelable;-><init>()V

    .line 385
    .local v0, "p":Landroid/net/ScanResultInfoParcelable;
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ScanResultInfoParcelable;->ssid:Ljava/lang/String;

    .line 386
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ScanResultInfoParcelable;->bssid:Ljava/lang/String;

    .line 387
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    sget-object v2, Landroid/net/shared/-$$Lambda$qVdKXOBVced7rdGB-dMQlkPbLW4;->INSTANCE:Landroid/net/shared/-$$Lambda$qVdKXOBVced7rdGB-dMQlkPbLW4;

    const-class v3, Landroid/net/InformationElementParcelable;

    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/InformationElementParcelable;

    iput-object v1, v0, Landroid/net/ScanResultInfoParcelable;->informationElements:[Landroid/net/InformationElementParcelable;

    .line 389
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 354
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, "SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v1, ", BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string v1, ", Information Elements: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    .line 359
    .local v2, "ie":Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    .end local v2    # "ie":Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
    goto :goto_0

    .line 361
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
