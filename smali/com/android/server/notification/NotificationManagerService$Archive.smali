.class Lcom/android/server/notification/NotificationManagerService$Archive;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Archive"
.end annotation


# instance fields
.field final mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mBufferSize:I

.field final mEnabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 697
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 698
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mEnabled:Landroid/util/SparseArray;

    .line 699
    return-void
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getArray(IZ)[Landroid/service/notification/StatusBarNotification;
    .locals 6
    .param p1, "count"    # I
    .param p2, "includeSnoozed"    # Z

    .line 730
    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 731
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 733
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroid/service/notification/StatusBarNotification;Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .line 734
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ge v2, p1, :cond_3

    .line 735
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 736
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/notification/StatusBarNotification;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    if-eqz p2, :cond_2

    .line 737
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 738
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/notification/StatusBarNotification;Ljava/lang/Integer;>;"
    :cond_2
    goto :goto_0

    .line 741
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/StatusBarNotification;

    return-object v3
.end method

.method public record(Landroid/service/notification/StatusBarNotification;I)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "reason"    # I

    .line 712
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    if-ne v0, v1, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 723
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 704
    .local v1, "N":I
    const-string v2, "Archive ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    const-string v2, " notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, ")"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "s)"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateHistoryEnabled(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 745
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mEnabled:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 747
    if-nez p2, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 749
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 748
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 754
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
