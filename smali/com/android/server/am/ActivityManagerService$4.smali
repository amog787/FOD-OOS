.class Lcom/android/server/am/ActivityManagerService$4;
.super Lcom/android/server/IntentResolver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/am/BroadcastFilter;",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 1267
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z
    .locals 4
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastFilter;",
            "Ljava/util/List<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;)Z"
        }
    .end annotation

    .line 1271
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    iget-object v0, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1272
    .local v0, "target":Landroid/os/IBinder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1273
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    iget-object v3, v3, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v3}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 1274
    const/4 v2, 0x0

    return v2

    .line 1272
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1277
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 0

    .line 1267
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$4;->allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p1, "input"    # Lcom/android/server/am/BroadcastFilter;

    .line 1291
    return-object p1
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1267
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$4;->getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;

    .line 1301
    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1267
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$4;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/android/server/am/BroadcastFilter;
    .locals 1
    .param p1, "size"    # I

    .line 1296
    new-array v0, p1, [Lcom/android/server/am/BroadcastFilter;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1267
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$4;->newArray(I)[Lcom/android/server/am/BroadcastFilter;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Lcom/android/server/am/BroadcastFilter;II)Lcom/android/server/am/BroadcastFilter;
    .locals 2
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .line 1282
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    iget v1, p1, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-eq v1, v0, :cond_1

    iget v0, p1, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 1286
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1284
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/IntentResolver;->newResult(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    return-object v0
.end method

.method protected bridge synthetic newResult(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0

    .line 1267
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService$4;->newResult(Lcom/android/server/am/BroadcastFilter;II)Lcom/android/server/am/BroadcastFilter;

    move-result-object p1

    return-object p1
.end method
