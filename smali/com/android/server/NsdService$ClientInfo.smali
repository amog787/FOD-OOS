.class Lcom/android/server/NsdService$ClientInfo;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0xa


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mClientIds:Landroid/util/SparseIntArray;

.field private final mClientRequests:Landroid/util/SparseIntArray;

.field private final mMessenger:Landroid/os/Messenger;

.field private mResolvedService:Landroid/net/nsd/NsdServiceInfo;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method private constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 1
    .param p2, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "m"    # Landroid/os/Messenger;

    .line 819
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    .line 817
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    .line 820
    iput-object p2, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    .line 821
    iput-object p3, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 822
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New client, channel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " messenger: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NsdService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NsdService;
    .param p2, "x1"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "x2"    # Landroid/os/Messenger;
    .param p4, "x3"    # Lcom/android/server/NsdService$1;

    .line 805
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;

    .line 805
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;

    .line 805
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;

    .line 805
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;
    .param p1, "x1"    # Landroid/net/nsd/NsdServiceInfo;

    .line 805
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/NsdService$ClientInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;
    .param p1, "x1"    # I

    .line 805
    invoke-direct {p0, p1}, Lcom/android/server/NsdService$ClientInfo;->getClientId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;

    .line 805
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NsdService$ClientInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;

    .line 805
    invoke-direct {p0}, Lcom/android/server/NsdService$ClientInfo;->expungeAllRequests()V

    return-void
.end method

.method private expungeAllRequests()V
    .locals 5

    .line 845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 846
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 847
    .local v1, "clientId":I
    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 848
    .local v2, "globalId":I
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Terminating client-ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " global-ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    .line 850
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 849
    const-string v4, "NsdService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const v4, 0x60001

    if-eq v3, v4, :cond_2

    const v4, 0x60009

    if-eq v3, v4, :cond_1

    const v4, 0x60012

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 856
    :cond_0
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, v2}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    .line 857
    goto :goto_1

    .line 859
    :cond_1
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, v2}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    .line 860
    goto :goto_1

    .line 853
    :cond_2
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, v2}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    .line 854
    nop

    .line 845
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    .end local v1    # "clientId":I
    .end local v2    # "globalId":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 866
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 867
    return-void
.end method

.method private getClientId(I)I
    .locals 2
    .param p1, "globalId"    # I

    .line 872
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 873
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 874
    return v0

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 827
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 828
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "mChannel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    const-string/jumbo v2, "mMessenger "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    const-string/jumbo v2, "mResolvedService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 832
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 833
    .local v3, "clientID":I
    const-string v4, "clientId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 834
    const-string v4, " mDnsId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 835
    const-string v4, " type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    .end local v3    # "clientID":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 837
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
