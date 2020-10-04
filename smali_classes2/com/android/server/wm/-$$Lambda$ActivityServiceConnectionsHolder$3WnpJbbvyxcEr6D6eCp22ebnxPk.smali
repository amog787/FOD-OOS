.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$3WnpJbbvyxcEr6D6eCp22ebnxPk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$3WnpJbbvyxcEr6D6eCp22ebnxPk;->f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$3WnpJbbvyxcEr6D6eCp22ebnxPk;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$3WnpJbbvyxcEr6D6eCp22ebnxPk;->f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$3WnpJbbvyxcEr6D6eCp22ebnxPk;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->lambda$disconnectActivityFromServices$0$ActivityServiceConnectionsHolder(Ljava/lang/Object;)V

    return-void
.end method
