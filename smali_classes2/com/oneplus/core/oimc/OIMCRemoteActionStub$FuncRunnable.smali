.class Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;
.super Ljava/lang/Object;
.source "OIMCRemoteActionStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/oimc/OIMCRemoteActionStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FuncRunnable"
.end annotation


# instance fields
.field action:I

.field arg:[Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/core/oimc/OIMCRemoteActionStub;


# direct methods
.method public constructor <init>(Lcom/oneplus/core/oimc/OIMCRemoteActionStub;ILjava/lang/String;)V
    .locals 1
    .param p2, "action"    # I
    .param p3, "arg"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->this$0:Lcom/oneplus/core/oimc/OIMCRemoteActionStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p2, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->action:I

    .line 43
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->arg:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/core/oimc/OIMCRemoteActionStub;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "action"    # I
    .param p3, "arg"    # [Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->this$0:Lcom/oneplus/core/oimc/OIMCRemoteActionStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->action:I

    .line 38
    iput-object p3, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->arg:[Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    iget v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->action:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->this$0:Lcom/oneplus/core/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/core/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->arg:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/core/oimc/IOPFunction;->start(Ljava/lang/Object;)I

    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->this$0:Lcom/oneplus/core/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/core/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->arg:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/core/oimc/IOPFunction;->stop(Ljava/lang/Object;)I

    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->this$0:Lcom/oneplus/core/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/core/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/core/oimc/OIMCRemoteActionStub$FuncRunnable;->arg:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/core/oimc/IOPFunction;->config(Ljava/lang/Object;)I

    .line 55
    :cond_2
    :goto_0
    return-void
.end method
