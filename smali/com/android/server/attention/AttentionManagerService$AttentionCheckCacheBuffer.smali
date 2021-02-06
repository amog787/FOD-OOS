.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AttentionCheckCacheBuffer"
.end annotation


# instance fields
.field private final mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

.field private mSize:I

.field private mStartIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    .line 474
    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 475
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    .line 466
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    return v0
.end method


# virtual methods
.method public add(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V
    .locals 5
    .param p1, "cache"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 483
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    add-int v2, v0, v1

    const/4 v3, 0x5

    rem-int/2addr v2, v3

    .line 484
    .local v2, "nextIndex":I
    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    aput-object p1, v4, v2

    .line 485
    if-ne v1, v3, :cond_0

    .line 486
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    goto :goto_0

    .line 488
    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 490
    :goto_0
    return-void
.end method

.method public get(I)Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    .locals 2
    .param p1, "offset"    # I

    .line 493
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    add-int/2addr v1, p1

    rem-int/lit8 v1, v1, 0x5

    aget-object v0, v0, v1

    .line 493
    :goto_0
    return-object v0
.end method

.method public getLast()Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    .locals 2

    .line 478
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x5

    .line 479
    .local v0, "lastIdx":I
    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method
