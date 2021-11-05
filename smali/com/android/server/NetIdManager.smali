.class public Lcom/android/server/NetIdManager;
.super Ljava/lang/Object;
.source "NetIdManager.java"


# static fields
.field public static final MAX_NET_ID:I = 0xfbff

.field public static final MIN_NET_ID:I = 0x64


# instance fields
.field private mLastNetId:I

.field private final mMaxNetId:I

.field private final mNetIdInUse:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const v0, 0xfbff

    invoke-direct {p0, v0}, Lcom/android/server/NetIdManager;-><init>(I)V

    .line 46
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "maxNetId"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 39
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/server/NetIdManager;->mLastNetId:I

    .line 50
    iput p1, p0, Lcom/android/server/NetIdManager;->mMaxNetId:I

    .line 51
    return-void
.end method

.method private getNextAvailableNetIdLocked(ILandroid/util/SparseBooleanArray;)I
    .locals 3
    .param p1, "lastId"    # I
    .param p2, "netIdInUse"    # Landroid/util/SparseBooleanArray;

    .line 58
    move v0, p1

    .line 59
    .local v0, "netId":I
    const/16 v1, 0x64

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/NetIdManager;->mMaxNetId:I

    if-gt v1, v2, :cond_2

    .line 60
    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v2, 0x64

    :goto_1
    move v0, v2

    .line 61
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    return v0

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No free netIds"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public releaseNetId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 84
    iget-object v0, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reserveNetId()I
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 73
    :try_start_0
    iget v1, p0, Lcom/android/server/NetIdManager;->mLastNetId:I

    iget-object v2, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, v2}, Lcom/android/server/NetIdManager;->getNextAvailableNetIdLocked(ILandroid/util/SparseBooleanArray;)I

    move-result v1

    iput v1, p0, Lcom/android/server/NetIdManager;->mLastNetId:I

    .line 75
    iget-object v2, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 76
    iget v1, p0, Lcom/android/server/NetIdManager;->mLastNetId:I

    monitor-exit v0

    return v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
