.class public abstract Lcom/oneplus/houston/common/client/AbstractEventCallback;
.super Ljava/lang/Object;
.source "AbstractEventCallback.java"

# interfaces
.implements Lcom/oneplus/houston/common/client/ISystemEventCallback;
.implements Lcom/oneplus/houston/common/client/IProcessEventCallback;
.implements Lcom/oneplus/houston/common/client/IUEventCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "id"    # I
    .param p4, "process"    # Ljava/lang/String;
    .param p5, "pid"    # I
    .param p6, "flags"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 24
    return-void
.end method

.method public doInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .locals 0
    .param p1, "data"    # Lcom/oneplus/houston/common/client/parcel/InitArg;

    .line 53
    return-void
.end method

.method public receive(Lcom/oneplus/houston/common/client/Event;)V
    .locals 0
    .param p1, "data"    # Lcom/oneplus/houston/common/client/Event;

    .line 73
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setAdj([I[I)V
    .locals 0
    .param p1, "pid"    # [I
    .param p2, "adj"    # [I

    .line 34
    return-void
.end method

.method public setAppList(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public setAudioState(I[I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "uids"    # [I
    .param p3, "pids"    # [I

    .line 68
    return-void
.end method

.method public setFlags(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .line 43
    return-void
.end method

.method public setKeyguardState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 63
    return-void
.end method

.method public setOom([I[I[Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # [I
    .param p2, "oomPid"    # [I
    .param p3, "oomString"    # [Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPss(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "pss"    # I
    .param p3, "rss"    # I

    .line 48
    return-void
.end method

.method public updateScreenState(Z)V
    .locals 0
    .param p1, "isScreenOn"    # Z

    .line 78
    return-void
.end method
