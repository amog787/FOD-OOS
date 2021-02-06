.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$CallLogContentObserver$F795P2fXEZGvzLUih_SIpFcsyic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/people/data/Event;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/people/data/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$CallLogContentObserver$F795P2fXEZGvzLUih_SIpFcsyic;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$CallLogContentObserver$F795P2fXEZGvzLUih_SIpFcsyic;->f$1:Lcom/android/server/people/data/Event;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$CallLogContentObserver$F795P2fXEZGvzLUih_SIpFcsyic;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$CallLogContentObserver$F795P2fXEZGvzLUih_SIpFcsyic;->f$1:Lcom/android/server/people/data/Event;

    check-cast p1, Lcom/android/server/people/data/UserData;

    invoke-static {v0, v1, p1}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->lambda$accept$0(Ljava/lang/String;Lcom/android/server/people/data/Event;Lcom/android/server/people/data/UserData;)V

    return-void
.end method
