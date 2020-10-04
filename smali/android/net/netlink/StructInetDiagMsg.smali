.class public Landroid/net/netlink/StructInetDiagMsg;
.super Ljava/lang/Object;
.source "StructInetDiagMsg.java"


# static fields
.field private static final IDIAG_UID_OFFSET:I = 0x50

.field public static final STRUCT_SIZE:I = 0x48


# instance fields
.field public idiag_uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructInetDiagMsg;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 56
    new-instance v0, Landroid/net/netlink/StructInetDiagMsg;

    invoke-direct {v0}, Landroid/net/netlink/StructInetDiagMsg;-><init>()V

    .line 57
    .local v0, "struct":Landroid/net/netlink/StructInetDiagMsg;
    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructInetDiagMsg;->idiag_uid:I

    .line 58
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructInetDiagMsg{ idiag_uid{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/netlink/StructInetDiagMsg;->idiag_uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
