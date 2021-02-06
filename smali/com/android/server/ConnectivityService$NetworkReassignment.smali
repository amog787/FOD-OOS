.class Lcom/android/server/ConnectivityService$NetworkReassignment;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkReassignment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    }
.end annotation


# instance fields
.field private final mReassignments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$NetworkReassignment;->mReassignments:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService$1;

    .line 7153
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkReassignment;-><init>()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/ConnectivityService$NetworkReassignment;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$NetworkReassignment;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7153
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkReassignment;->getReassignment(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    move-result-object v0

    return-object v0
.end method

.method private getReassignment(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    .locals 3
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7199
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkReassignment;->getRequestReassignments()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    .line 7200
    .local v1, "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    if-ne p1, v2, :cond_0

    return-object v1

    .line 7201
    .end local v1    # "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    :cond_0
    goto :goto_0

    .line 7202
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method addRequestReassignment(Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;)V
    .locals 4
    .param p1, "reassignment"    # Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    .line 7180
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_1

    .line 7184
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkReassignment;->mReassignments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    .line 7185
    .local v1, "existing":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7190
    .end local v1    # "existing":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    goto :goto_0

    .line 7186
    .restart local v1    # "existing":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to reassign ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] but already have ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7192
    .end local v1    # "existing":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkReassignment;->mReassignments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7193
    return-void
.end method

.method public debugString()Ljava/lang/String;
    .locals 4

    .line 7216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7217
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "NetworkReassignment :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7218
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkReassignment;->mReassignments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 7219
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkReassignment;->getRequestReassignments()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    .line 7220
    .local v2, "rr":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    const-string v3, "\n  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7221
    .end local v2    # "rr":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    goto :goto_0

    .line 7222
    :cond_1
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getRequestReassignments()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;",
            ">;"
        }
    .end annotation

    .line 7176
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkReassignment;->mReassignments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 7206
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "NetReassign ["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 7208
    .local v0, "sj":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkReassignment;->mReassignments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 7209
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkReassignment;->getRequestReassignments()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    .line 7210
    .local v2, "rr":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 7211
    .end local v2    # "rr":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    goto :goto_0

    .line 7212
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
