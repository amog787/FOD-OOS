.class final Lcom/android/server/hdmi/HdmiCecMessageCache;
.super Ljava/lang/Object;
.source "HdmiCecMessageCache.java"


# static fields
.field private static final CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Landroid/util/FastImmutableArraySet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    .line 32
    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 33
    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 34
    const/16 v2, 0x87

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 35
    const/16 v2, 0x9e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;

    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 42
    return-void
.end method

.method private isCacheable(I)Z
    .locals 2
    .param p1, "opcode"    # I

    .line 100
    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 85
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 86
    .local v0, "opcode":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->isCacheable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 91
    .local v1, "source":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 92
    .local v2, "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    if-nez v2, :cond_1

    .line 93
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 94
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    :cond_1
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    return-void
.end method

.method public flushAll()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 76
    return-void
.end method

.method public flushMessagesFrom(I)V
    .locals 1
    .param p1, "address"    # I

    .line 68
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 69
    return-void
.end method

.method public getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p1, "address"    # I
    .param p2, "opcode"    # I

    .line 54
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 55
    .local v0, "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    return-object v1

    .line 59
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object v1
.end method
