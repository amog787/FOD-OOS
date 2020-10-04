.class Lcom/android/server/notification/NotificationManagerService$Archive;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Archive"
.end annotation


# instance fields
.field final mBuffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field final mBufferSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 629
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    .line 630
    return-void
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getArray(I)[Landroid/service/notification/StatusBarNotification;
    .locals 5
    .param p1, "count"    # I

    .line 658
    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    .line 660
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    .line 661
    .local v0, "a":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 662
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v2, 0x0

    .line 663
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge v2, p1, :cond_1

    .line 664
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    .line 666
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public record(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "nr"    # Landroid/service/notification/StatusBarNotification;

    .line 643
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    if-ne v0, v1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 651
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    .line 635
    .local v1, "N":I
    const-string v2, "Archive ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 637
    const-string v2, " notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, ")"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "s)"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
