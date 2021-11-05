.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$E9W1qwLXBAwoppLfYj6pecVF_x8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$E9W1qwLXBAwoppLfYj6pecVF_x8;->f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$E9W1qwLXBAwoppLfYj6pecVF_x8;->f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->lambda$disconnectActivityFromServices$0$ActivityServiceConnectionsHolder()V

    return-void
.end method
