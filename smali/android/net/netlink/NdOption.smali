.class public Landroid/net/netlink/NdOption;
.super Ljava/lang/Object;
.source "NdOption.java"


# static fields
.field public static final STRUCT_SIZE:I = 0x2

.field public static final UNKNOWN:Landroid/net/netlink/NdOption;


# instance fields
.field public final length:I

.field public final type:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Landroid/net/netlink/NdOption;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/net/netlink/NdOption;-><init>(BI)V

    sput-object v0, Landroid/net/netlink/NdOption;->UNKNOWN:Landroid/net/netlink/NdOption;

    return-void
.end method

.method constructor <init>(BI)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "length"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-byte p1, p0, Landroid/net/netlink/NdOption;->type:B

    .line 35
    iput p2, p0, Landroid/net/netlink/NdOption;->length:I

    .line 36
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NdOption;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 54
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 58
    .local v1, "type":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 59
    .local v2, "length":I
    if-nez v2, :cond_1

    return-object v0

    .line 61
    :cond_1
    const/16 v0, 0x26

    if-eq v1, v0, :cond_2

    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 67
    .local v0, "newPosition":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    sget-object v3, Landroid/net/netlink/NdOption;->UNKNOWN:Landroid/net/netlink/NdOption;

    return-object v3

    .line 63
    .end local v0    # "newPosition":I
    :cond_2
    invoke-static {p0}, Landroid/net/netlink/StructNdOptPref64;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdOptPref64;

    move-result-object v0

    return-object v0

    .line 54
    .end local v1    # "type":B
    .end local v2    # "length":I
    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/net/netlink/NdOption;->type:B

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/netlink/NdOption;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NdOption(%d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 73
    iget-byte v0, p0, Landroid/net/netlink/NdOption;->type:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    iget v0, p0, Landroid/net/netlink/NdOption;->length:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    return-void
.end method
