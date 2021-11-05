.class public Lcom/android/server/connectivity/AutodestructReference;
.super Ljava/lang/Object;
.source "AutodestructReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mHeld:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/android/server/connectivity/AutodestructReference;, "Lcom/android/server/connectivity/AutodestructReference<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/connectivity/AutodestructReference;->mHeld:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Autodestruct reference to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAndDestroy()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/server/connectivity/AutodestructReference;, "Lcom/android/server/connectivity/AutodestructReference<TT;>;"
    iget-object v0, p0, Lcom/android/server/connectivity/AutodestructReference;->mHeld:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 40
    return-object v0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Already autodestructed"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
