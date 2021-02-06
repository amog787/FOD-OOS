.class Lcom/android/server/content/ContentService$ObserverCollector$Key;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService$ObserverCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field final flags:I

.field final observer:Landroid/database/IContentObserver;

.field final selfChange:Z

.field final uid:I

.field final userId:I


# direct methods
.method constructor <init>(Landroid/database/IContentObserver;IZII)V
    .locals 0
    .param p1, "observer"    # Landroid/database/IContentObserver;
    .param p2, "uid"    # I
    .param p3, "selfChange"    # Z
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    .line 525
    iput p2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 526
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 527
    iput p4, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 528
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    .line 529
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 533
    instance-of v0, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 534
    return v1

    .line 536
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 537
    .local v0, "other":Lcom/android/server/content/ContentService$ObserverCollector$Key;
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    iget v3, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    iget-boolean v3, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    iget v3, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    iget v3, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 546
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
